import 'package:example/bookstore_server.dart';

Future<void> main(List<String> args) async {
  await Server().start(args);
}
