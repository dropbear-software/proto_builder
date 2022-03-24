import 'package:example/api.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

class Client {
  late final BookstoreClient _stub;
  late final ClientChannel _channel;

  Client() {
    _channel = ClientChannel('127.0.0.1',
        port: 50001,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    this._stub = BookstoreClient(_channel,
        options: CallOptions(timeout: Duration(seconds: 30)));
  }

  Future<void> start() async {
    try {
      await _createShelfDemo();
      await _getShelfDemo();
      // await _deleteShelfDemo();
      await _listShelvesDemo();
    } catch (e) {
      print(e);
    }
    await _channel.shutdown();
  }

  Future<void> _createShelfDemo() async {
    final request = CreateShelfRequest(shelf: Shelf(theme: 'Horror'));
    final response = await this._stub.createShelf(request);
    print(
        'Created a new bookshelf titled: ${response.theme} with id ${response.id}');
  }

  Future<void> _getShelfDemo() async {
    final request = GetShelfRequest(shelf: Int64(1));
    final response = await this._stub.getShelf(request);
    print('Got shelf: ${response.theme} with id ${response.id}');
  }

  Future<void> _deleteShelfDemo() async {
    final request = DeleteShelfRequest(shelf: Int64(1));
    await this._stub.deleteShelf(request);
    print('Shelf Deleted');
  }

  Future<void> _listShelvesDemo() async {
    final response = await this._stub.listShelves(Empty());
    print('${response.shelves.length} Shelves returned');
    print(
        'The theme of the first response was ${response.shelves.first.theme}');
  }
}
