import 'package:build/build.dart';

/// Copy contents of a `txt` files into `name.txt.copy`.
///
/// A header row is added pointing to the input file name.
/// Unlike most other builders, which emit files next to their primary inputs,
/// this builder generates files in a different directory! Inputs are expected
/// in `assets` and generated files go to `lib/generated/`.
class CopyBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => const {
        // To implement directory moves, this builder uses capture groups
        // ({{}}). Capture groups can match anything in the input's path,
        // including subdirectories. The `^protos` at the beginning ensures that
        // only proto files under the top-level `protos/` folder
        // will be considered.
        '^protos/{{}}.proto': ['lib/generated/{{}}.proto.copy'],
      };

  @override
  Future build(BuildStep buildStep) async {
    // Each [buildStep] has a single input.
    var inputId = buildStep.inputId;

    // Create a new target [AssetId] based on the old one.
    var contents = await buildStep.readAsString(inputId);

    final outputId = AssetId(
      inputId.package,
      inputId.path
          .replaceFirst('protos/', 'lib/generated/')
          .replaceFirst('.proto', '.proto.copy'),
    );

    // var copy = inputId.addExtension('.copy');

    // Write out the new asset.
    await buildStep.writeAsString(
        outputId, '// Copied from $inputId\n$contents');
  }
}
