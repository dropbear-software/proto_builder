import 'package:example/bookstore_client.dart';

Future<void> main(List<String> args) async {
  final apiClient = Client();
  await apiClient.start();
}
