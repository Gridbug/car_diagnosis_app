// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_defect_photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExternalDefectPhoto> _$externalDefectPhotoSerializer =
    new _$ExternalDefectPhotoSerializer();

class _$ExternalDefectPhotoSerializer
    implements StructuredSerializer<ExternalDefectPhoto> {
  @override
  final Iterable<Type> types = const [
    ExternalDefectPhoto,
    _$ExternalDefectPhoto
  ];
  @override
  final String wireName = 'ExternalDefectPhoto';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExternalDefectPhoto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'external_defect_id',
      serializers.serialize(object.externalDefectId,
          specifiedType: const FullType(int)),
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
  ExternalDefectPhoto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExternalDefectPhotoBuilder();

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
        case 'external_defect_id':
          result.externalDefectId = serializers.deserialize(value,
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

class _$ExternalDefectPhoto extends ExternalDefectPhoto {
  @override
  final int id;
  @override
  final int externalDefectId;
  @override
  final Uint8List photo;
  @override
  final String description;

  factory _$ExternalDefectPhoto(
          [void Function(ExternalDefectPhotoBuilder) updates]) =>
      (new ExternalDefectPhotoBuilder()..update(updates)).build();

  _$ExternalDefectPhoto._(
      {this.id, this.externalDefectId, this.photo, this.description})
      : super._() {
    if (externalDefectId == null) {
      throw new BuiltValueNullFieldError(
          'ExternalDefectPhoto', 'externalDefectId');
    }
  }

  @override
  ExternalDefectPhoto rebuild(
          void Function(ExternalDefectPhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalDefectPhotoBuilder toBuilder() =>
      new ExternalDefectPhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalDefectPhoto &&
        id == other.id &&
        externalDefectId == other.externalDefectId &&
        photo == other.photo &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), externalDefectId.hashCode),
            photo.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExternalDefectPhoto')
          ..add('id', id)
          ..add('externalDefectId', externalDefectId)
          ..add('photo', photo)
          ..add('description', description))
        .toString();
  }
}

class ExternalDefectPhotoBuilder
    implements
        Builder<ExternalDefectPhoto, ExternalDefectPhotoBuilder>,
        EntityBuilder<int> {
  _$ExternalDefectPhoto _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _externalDefectId;
  int get externalDefectId => _$this._externalDefectId;
  set externalDefectId(int externalDefectId) =>
      _$this._externalDefectId = externalDefectId;

  Uint8List _photo;
  Uint8List get photo => _$this._photo;
  set photo(Uint8List photo) => _$this._photo = photo;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ExternalDefectPhotoBuilder();

  ExternalDefectPhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _externalDefectId = _$v.externalDefectId;
      _photo = _$v.photo;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ExternalDefectPhoto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExternalDefectPhoto;
  }

  @override
  void update(void Function(ExternalDefectPhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExternalDefectPhoto build() {
    final _$result = _$v ??
        new _$ExternalDefectPhoto._(
            id: id,
            externalDefectId: externalDefectId,
            photo: photo,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
