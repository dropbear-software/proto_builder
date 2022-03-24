import '../data/shelf_entity.dart';
import '../proto/example/bookstore_service.pb.dart';

abstract class BookstoreRepository {
  Future<ShelfEntity> createShelf(Shelf shelf);

  Future<Iterable<Shelf>> listShelves();

  Future<Shelf> getShelf(int shelfId);

  Future<void> deleteShelf(int shelfId);

  Future<Book> createBook(int shelfId, Book book);
}
