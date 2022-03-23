import 'dart:collection';

import 'package:fixnum/fixnum.dart';

import '../data/bookstore_repository.dart';
import '../data/shelf_entity.dart';
import '../proto/example/bookstore_service.pb.dart';

class BookstoreInMemoryRepository implements BookstoreRepository {
  late final HashMap<int, _ShelfInfo> _shelves;
  late int _lastShelfId;

  BookstoreInMemoryRepository() {
    this._shelves = HashMap<int, _ShelfInfo>();
    this._lastShelfId = 0;
  }

  @override
  Future<ShelfEntity> createShelf(Shelf shelf) async {
    // Clients should not provide ids
    if (shelf.hasId()) {
      throw ArgumentError.value(shelf.id, 'shelf', 'Should be blank');
    }
    // Generate the next id
    _lastShelfId++;

    // Update the id on the shelf to match
    shelf.id = Int64(_lastShelfId);

    // Add the new shelf to the in memory database
    this._shelves.putIfAbsent(_lastShelfId, (() => _ShelfInfo(shelf)));

    final shelfEntity = ShelfEntity((entity) => entity
      ..id = shelf.id
      ..shelf = shelf.writeToBuffer());
    // Create a new ShelfEntity and return it
    return Future.value(shelfEntity);
  }

  @override
  void deleteShelf(int shelfId) {
    // TODO: implement deleteShelf
  }

  @override
  Shelf getShelf(int shelfId) {
    // TODO: implement getShelf
    throw UnimplementedError();
  }

  @override
  Iterable<Shelf> listShelves() {
    // TODO: implement listShelves
    throw UnimplementedError();
  }
}

// class BookstoreData {
//   late final HashMap<int, _ShelfInfo> _shelves;
//   late num _lastShelfId;

//   BookstoreData() {
//     this._shelves = HashMap<int, _ShelfInfo>();
//     this._lastShelfId = 0;
//   }
// }

class _ShelfInfo {
  late final Shelf _shelf;
  late final Map<int, Book> _books;
  late num _lastBookId;

  _ShelfInfo(Shelf shelf) {
    this._shelf = shelf;
    this._books = HashMap<int, Book>();
    this._lastBookId = 0;
  }
}
