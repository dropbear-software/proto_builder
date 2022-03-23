import 'package:grpc/grpc.dart';

import '../data/bookstore_repository.dart';
import '../proto/example/bookstore_service.pbgrpc.dart';
import '../proto/google/protobuf/empty.pb.dart';

class BookstoreService extends BookstoreServiceBase {
  late final BookstoreRepository _repository;

  BookstoreService(this._repository);

  @override
  Future<Book> createBook(ServiceCall call, CreateBookRequest request) {
    // TODO: implement createBook
    throw UnimplementedError();
  }

  @override
  Future<Shelf> createShelf(
      ServiceCall call, CreateShelfRequest request) async {
    try {
      final shelfEntity = await _repository.createShelf(request.shelf);
      return Shelf.fromBuffer(shelfEntity.shelf);
    } catch (e) {
      // TODO: This isn't actually true right now.
      throw GrpcError.alreadyExists();
    }
  }

  @override
  Future<Empty> deleteBook(ServiceCall call, DeleteBookRequest request) {
    // TODO: implement deleteBook
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteShelf(ServiceCall call, DeleteShelfRequest request) {
    // TODO: implement deleteShelf
    throw UnimplementedError();
  }

  @override
  Future<Book> getBook(ServiceCall call, GetBookRequest request) {
    // TODO: implement getBook
    throw UnimplementedError();
  }

  @override
  Future<Shelf> getShelf(ServiceCall call, GetShelfRequest request) {
    // TODO: implement getShelf
    throw UnimplementedError();
  }

  @override
  Future<ListBooksResponse> listBooks(
      ServiceCall call, ListBooksRequest request) {
    // TODO: implement listBooks
    throw UnimplementedError();
  }

  @override
  Future<ListShelvesResponse> listShelves(ServiceCall call, Empty request) {
    // TODO: implement listShelves
    throw UnimplementedError();
  }
}
