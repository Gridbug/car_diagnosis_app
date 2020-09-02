// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tire_photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TirePhoto> _$tirePhotoSerializer = new _$TirePhotoSerializer();

class _$TirePhotoSerializer implements StructuredSerializer<TirePhoto> {
  @override
  final Iterable<Type> types = const [TirePhoto, _$TirePhoto];
  @override
  final String wireName = 'TirePhoto';

  @override
  Iterable<Object> serialize(Serializers serializers, TirePhoto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tire_id',
      serializers.serialize(object.tireId, specifiedType: const FullType(int)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.photo != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(object.photo,
            specifiedType: const FullType(Uint8List)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TirePhoto deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TirePhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tire_id':
          result.tireId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List)) as Uint8List;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TirePhoto extends TirePhoto {
  @override
  final int id;
  @override
  final int tireId;
  @override
  final Uint8List photo;
  @override
  final String description;

  factory _$TirePhoto([void Function(TirePhotoBuilder) updates]) =>
      (new TirePhotoBuilder()..update(updates)).build();

  _$TirePhoto._({this.id, this.tireId, this.photo, this.description})
      : super._() {
    if (tireId == null) {
      throw new BuiltValueNullFieldError('TirePhoto', 'tireId');
    }
  }

  @override
  TirePhoto rebuild(void Function(TirePhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TirePhotoBuilder toBuilder() => new TirePhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TirePhoto &&
        id == other.id &&
        tireId == other.tireId &&
        photo == other.photo &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), tireId.hashCode), photo.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TirePhoto')
          ..add('id', id)
          ..add('tireId', tireId)
          ..add('photo', photo)
          ..add('description', description))
        .toString();
  }
}

class TirePhotoBuilder
    implements Builder<TirePhoto, TirePhotoBuilder>, EntityBuilder<int> {
  _$TirePhoto _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _tireId;
  int get tireId => _$this._tireId;
  set tireId(int tireId) => _$this._tireId = tireId;

  Uint8List _photo;
  Uint8List get photo => _$this._photo;
  set photo(Uint8List photo) => _$this._photo = photo;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  TirePhotoBuilder();

  TirePhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _tireId = _$v.tireId;
      _photo = _$v.photo;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TirePhoto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TirePhoto;
  }

  @override
  void update(void Function(TirePhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TirePhoto build() {
    final _$result = _$v ??
        new _$TirePhoto._(
            id: id, tireId: tireId, photo: photo, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
