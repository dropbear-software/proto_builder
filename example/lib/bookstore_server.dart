import 'dart:io';
import 'package:example/src/data/bookstore_inmemory_repository.dart';
import 'package:grpc/grpc.dart' as grpc;

import 'src/services/bookstore_service.dart';

class Server {
  static final int DEFAULT_PORT = 50001;
  static final bookstoreRepository = BookstoreInMemoryRepository();

  Future<void> start(List<String> args) async {
    // Tell the server which services it should serve
    final server = grpc.Server([BookstoreService(bookstoreRepository)]);
    await server.serve(port: DEFAULT_PORT, address: '127.0.0.1');
    print('Server listening on port ${server.port}...');

    // Watch for Ctrl+C and shut down the server if needed
    ProcessSignal.sigint.watch().listen((signal) {
      if (signal == ProcessSignal.sigint) {
        print("Shutting down");
        server.shutdown();
        exit(0);
      }
    });
  }
}
