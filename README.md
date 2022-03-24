<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

This package provides a Dart builder which wraps the Protocol Buffers compiler (protoc) to provide a integrated developer experience.

## Features

Like other build packages you may have used before once this is set up correctly you can use it to automatically convert your `.proto` files into Dart source that will provide you with a fully typed API surface for both server and client applications.

## Getting started

**Step 1:** Install the [protoc compiler](https://github.com/protocolbuffers/protobuf/releases) and the [Dart plugin](https://github.com/google/protobuf.dart/tree/master/protoc_plugin) that goes with it if you have not already. Additionally, make sure that they are both available on your `$PATH`

**Step 2:** Create a protos file at the root of your project and place your `.proto` files inside of it along with any dependencies

**Step 3:** Add this package as a build dependency by adding the following to your `pubspec.yaml` file
```yaml
dev_dependencies:
  proto_builder:
    git:
      url: git://github.com/dropbear-software/proto_builder.git
```

**Step 4:** Create a `build.yaml` file if you don't have one already and add the following to it
```yaml
builders:
  protoBuilder:
    import: "package:proto_builder/proto_builder.dart"
    builder_factories: ["protoBuilder"]
    build_extensions: {'^protos/{{}}.proto': ['lib/src/proto/{{}}.pb.dart', 'lib/src/proto/{{}}.pbenum.dart', 'lib/src/proto/{{}}.pbjson.dart', 'lib/src/proto/{{}}.pbgrpc.dart']}
    auto_apply: root_package
    build_to: source

targets:
  $default:
    sources:
      - protos/**
      - lib/**
      # Note that it is important to include these in the default target.
      - pubspec.*
      - $package$
```

**Step 5:** You should now have everything you need to use the builder. Start the process by running `dart run build_runner build` and the compiled Dart classes should appear in your `lib/src/proto` directory.


## Usage

Take a look at the examples folder to see the correct folder layout and build.yaml configuration. Also I have included a demo application based on one put together by the Google Cloud team that was [originally designed for Java](https://github.com/GoogleCloudPlatform/java-docs-samples/tree/main/endpoints/bookstore-grpc) which should give you an idea of what a gRPC client / server application would look like in practice.

## Additional information

If you aren't already familiar with Protocol Buffers consider taking a look at the official website [here](https://developers.google.com/protocol-buffers) where you can find some good background information along with a couple of simple Dart tutorials. Also you can find the official gRPC website [here](https://grpc.io/)
