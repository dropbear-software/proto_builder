import 'dart:collection';
import 'dart:ffi';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' show GrpcError;

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
      throw GrpcError.invalidArgument('shelf id should be null');
    }
    // Generate the next id
    _lastShelfId++;

    // Update the id on the shelf to match
    shelf.id = Int64(_lastShelfId);

    // Add the new shelf to the in memory database
    this._shelves.putIfAbsent(_lastShelfId, (() => _ShelfInfo(shelf)));

    // Convert the Shelf to a ShelfEntity using our builder
    final shelfEntity = ShelfEntity((entity) => entity
      ..id = shelf.id
      ..shelf = shelf.writeToBuffer());

    // Create a new ShelfEntity and return it
    return Future.value(shelfEntity);
  }

  @override
  Future<void> deleteShelf(int shelfId) async {
    // Check if we even have this shelf in our database first
    if (this._shelves.containsKey(shelfId)) {
      // If so lets remove it
      Future.sync(() => _shelves.remove(shelfId));
    } else {
      // Otherwise let the client know we couldn't find it
      throw GrpcError.notFound();
    }
  }

  @override
  Future<Shelf> getShelf(int shelfId) async {
    // Check if we even have this shelf in our database first
    if (_shelves.containsKey(shelfId)) {
      // If so return the shelf associated with it
      return Future.value(_shelves[shelfId]!._shelf);
    }

    // Otherwise let the client know we couldn't find it
    throw GrpcError.notFound();
  }

  @override
  Future<Iterable<Shelf>> listShelves() {
    // Lets create a blank list of shelves
    final List<Shelf> shelves = [];
    // Then add all of the shelves we have to it
    for (var shelfInfo in _shelves.values) {
      shelves.add(shelfInfo._shelf);
    }

    // Finally, lets return it
    return Future.value(shelves);
  }

  @override
  Future<Book> createBook(int shelfId, Book book) async {
    if (_shelves.containsKey(shelfId)) {
      final shelf = _shelves[shelfId]!;

      if (shelf._books.containsKey(book.id.toInt())) {
        // Make sure there isn't already a book with an id if one was specified
        throw GrpcError.alreadyExists();
      } else {
        shelf._lastBookId++;

        // Update the book id to match
        book.id = Int64(shelf._lastBookId);

        // Place the book into the database
        Future.sync(
            () => {shelf._books.putIfAbsent(shelf._lastBookId, () => book)});

        // Finally return the book itself
        return book;
      }
    }

    // If we made it here it means we couldn't find the shelf
    throw GrpcError.unavailable();
  }
}

class _ShelfInfo {
  late final Shelf _shelf;
  late final Map<int, Book> _books;
  late int _lastBookId;

  _ShelfInfo(Shelf shelf) {
    this._shelf = shelf;
    this._books = HashMap<int, Book>();
    this._lastBookId = 0;
  }
}
