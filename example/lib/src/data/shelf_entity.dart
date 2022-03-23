import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart';

part 'shelf_entity.g.dart';

/// Example of how to use built_value.
///
/// The value class must implement [Built]. It must be abstract, and have
/// fields declared as abstract getters. Finally, it must have a particular
/// constructor and factory, as shown here.
abstract class ShelfEntity implements Built<ShelfEntity, ShelfEntityBuilder> {
  /// Example of how to make a built_value type serializable.
  ///
  /// Declare a static final [Serializer] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<ShelfEntity> get serializer => _$shelfEntitySerializer;

  Int64 get id;

  /// Normall I would store a Shelf here but it isn't immutable to I am
  /// converting it back and forth using [Shelf.fromBuffer()] for now
  Uint8List get shelf;

  /// The recommended factory exposes the generated builder interface. This
  /// works well for classes with many fields, or for classes that might be
  /// changed to have more fields later.
  factory ShelfEntity([void Function(ShelfEntityBuilder) updates]) =
      _$ShelfEntity;
  ShelfEntity._();
}
