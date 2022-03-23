import '../data/shelf_entity.dart';
import '../proto/example/bookstore_service.pb.dart';

abstract class BookstoreRepository {
  Future<ShelfEntity> createShelf(Shelf shelf);

  Iterable<Shelf> listShelves();

  Future<Shelf> getShelf(int shelfId);

  void deleteShelf(int shelfId);
}
