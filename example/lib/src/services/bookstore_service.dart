import 'package:grpc/grpc.dart';

import '../data/bookstore_repository.dart';
import '../proto/example/bookstore_service.pbgrpc.dart';
import '../proto/google/protobuf/empty.pb.dart';

class BookstoreService extends BookstoreServiceBase {
  late final BookstoreRepository _repository;

  BookstoreService(this._repository);

  @override
  Future<Book> createBook(ServiceCall call, CreateBookRequest request) {
    return _repository.createBook(request.shelf.toInt(), request.book);
  }

  @override
  Future<Shelf> createShelf(
      ServiceCall call, CreateShelfRequest request) async {
    try {
      final shelfEntity = await _repository.createShelf(request.shelf);
      return Shelf.fromBuffer(shelfEntity.shelf);
    } catch (error) {
      throw error;
    }
  }

  @override
  Future<Empty> deleteBook(ServiceCall call, DeleteBookRequest request) {
    // TODO: implement deleteBook
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteShelf(
      ServiceCall call, DeleteShelfRequest request) async {
    try {
      final shelfId = request.shelf;
      await _repository.deleteShelf(shelfId.toInt());
      return Empty();
    } catch (error) {
      throw error;
    }
  }

  @override
  Future<Book> getBook(ServiceCall call, GetBookRequest request) {
    return _repository.getBook(request.shelf.toInt(), request.book.toInt());
  }

  @override
  Future<Shelf> getShelf(ServiceCall call, GetShelfRequest request) {
    final shelfId = request.shelf.toInt();
    try {
      return _repository.getShelf(shelfId);
    } catch (e) {
      throw GrpcError.notFound();
    }
  }

  @override
  Future<ListBooksResponse> listBooks(
      ServiceCall call, ListBooksRequest request) {
    // TODO: implement listBooks
    throw UnimplementedError();
  }

  @override
  Future<ListShelvesResponse> listShelves(
      ServiceCall call, Empty request) async {
    final shelves = await _repository.listShelves();
    return ListShelvesResponse(shelves: shelves);
  }
}
