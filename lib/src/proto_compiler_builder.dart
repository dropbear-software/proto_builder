import 'dart:async';
import 'dart:io';

import 'package:build/build.dart';
import 'package:scratch_space/scratch_space.dart';

const String protobufExtension = '.pb.dart';
const String protobufEnumExtension = '.pbenum.dart';
const String protobufJsonExtension = '.pbjson.dart';
const String protobufGrpcExtension = '.pbgrpc.dart';

final scratchSpaceResource =
    Resource(() => ScratchSpace(), dispose: (old) => old.delete());

class ProtoCompilerBuilder extends Builder {
  @override
  Future<void> build(BuildStep buildStep) async {
    var inputId = buildStep.inputId;

    var scratchSpace = await buildStep.fetchResource(scratchSpaceResource);

    // We need to transform this into an iterable to use `ensureAssets`
    var assetsToCopy = <AssetId>{buildStep.inputId};

    // We should now officially have the proto file in the scratch space
    await scratchSpace.ensureAssets(assetsToCopy, buildStep);

    final tempDirAsString = scratchSpace.tempDir.path;

    // Now we can use the proto compiler
    await Process.run(
        'protoc',
        [
          '-I=$tempDirAsString',
          '--dart_out=grpc:$tempDirAsString',
          '$tempDirAsString/${buildStep.inputId.path}'
        ],
        workingDirectory: tempDirAsString);

    // Create a list of the possible file outputs we could have
    const fileTypes = [
      protobufExtension,
      protobufEnumExtension,
      protobufJsonExtension,
      protobufGrpcExtension
    ];

    // Loop through each one and copy it if it exists
    for (var extension in fileTypes) {
      final compiledFile = inputId.changeExtension(extension);
      await _copyIfExists(compiledFile, scratchSpace, buildStep);
    }
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        // To implement directory moves, this builder uses capture groups
        // ({{}}). Capture groups can match anything in the input's path,
        // including subdirectories. The `^protos` at the beginning ensures that
        // only proto files under the top-level `protos/` folder
        // will be considered.
        '^protos/{{}}.proto': [
          'lib/src/proto/{{}}$protobufExtension',
          'lib/src/proto/{{}}$protobufEnumExtension',
          'lib/src/proto/{{}}$protobufJsonExtension',
          'lib/src/proto/{{}}$protobufGrpcExtension',
        ],
      };

  Future<void> _copyIfExists(
      AssetId id, ScratchSpace scratchSpace, AssetWriter assetWriter) async {
    final File file = scratchSpace.fileFor(id);
    if (file.existsSync()) {
      final outputId =
          AssetId(id.package, id.path.replaceFirst('protos', 'lib/src/proto'));

      final contents = await file.readAsString();

      await assetWriter.writeAsString(outputId, contents);
    }
  }
}
