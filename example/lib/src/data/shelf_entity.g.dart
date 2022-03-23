// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shelf_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShelfEntity> _$shelfEntitySerializer = new _$ShelfEntitySerializer();

class _$ShelfEntitySerializer implements StructuredSerializer<ShelfEntity> {
  @override
  final Iterable<Type> types = const [ShelfEntity, _$ShelfEntity];
  @override
  final String wireName = 'ShelfEntity';

  @override
  Iterable<Object?> serialize(Serializers serializers, ShelfEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(Int64)),
      'shelf',
      serializers.serialize(object.shelf,
          specifiedType: const FullType(Uint8List)),
    ];

    return result;
  }

  @override
  ShelfEntity deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShelfEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(Int64)) as Int64;
          break;
        case 'shelf':
          result.shelf = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List)) as Uint8List;
          break;
      }
    }

    return result.build();
  }
}

class _$ShelfEntity extends ShelfEntity {
  @override
  final Int64 id;
  @override
  final Uint8List shelf;

  factory _$ShelfEntity([void Function(ShelfEntityBuilder)? updates]) =>
      (new ShelfEntityBuilder()..update(updates)).build();

  _$ShelfEntity._({required this.id, required this.shelf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ShelfEntity', 'id');
    BuiltValueNullFieldError.checkNotNull(shelf, 'ShelfEntity', 'shelf');
  }

  @override
  ShelfEntity rebuild(void Function(ShelfEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShelfEntityBuilder toBuilder() => new ShelfEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShelfEntity && id == other.id && shelf == other.shelf;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), shelf.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShelfEntity')
          ..add('id', id)
          ..add('shelf', shelf))
        .toString();
  }
}

class ShelfEntityBuilder implements Builder<ShelfEntity, ShelfEntityBuilder> {
  _$ShelfEntity? _$v;

  Int64? _id;
  Int64? get id => _$this._id;
  set id(Int64? id) => _$this._id = id;

  Uint8List? _shelf;
  Uint8List? get shelf => _$this._shelf;
  set shelf(Uint8List? shelf) => _$this._shelf = shelf;

  ShelfEntityBuilder();

  ShelfEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _shelf = $v.shelf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShelfEntity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShelfEntity;
  }

  @override
  void update(void Function(ShelfEntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShelfEntity build() {
    final _$result = _$v ??
        new _$ShelfEntity._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'ShelfEntity', 'id'),
            shelf: BuiltValueNullFieldError.checkNotNull(
                shelf, 'ShelfEntity', 'shelf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
