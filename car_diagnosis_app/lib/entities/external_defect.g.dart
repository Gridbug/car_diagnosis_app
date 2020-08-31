// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_defect.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExternalDefect> _$externalDefectSerializer =
    new _$ExternalDefectSerializer();

class _$ExternalDefectSerializer
    implements StructuredSerializer<ExternalDefect> {
  @override
  final Iterable<Type> types = const [ExternalDefect, _$ExternalDefect];
  @override
  final String wireName = 'ExternalDefect';

  @override
  Iterable<Object> serialize(Serializers serializers, ExternalDefect object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ExternalDefect deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExternalDefectBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExternalDefect extends ExternalDefect {
  @override
  final int id;
  @override
  final String name;

  factory _$ExternalDefect([void Function(ExternalDefectBuilder) updates]) =>
      (new ExternalDefectBuilder()..update(updates)).build();

  _$ExternalDefect._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ExternalDefect', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ExternalDefect', 'name');
    }
  }

  @override
  ExternalDefect rebuild(void Function(ExternalDefectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalDefectBuilder toBuilder() =>
      new ExternalDefectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalDefect && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExternalDefect')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ExternalDefectBuilder
    implements Builder<ExternalDefect, ExternalDefectBuilder> {
  _$ExternalDefect _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ExternalDefectBuilder();

  ExternalDefectBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalDefect other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExternalDefect;
  }

  @override
  void update(void Function(ExternalDefectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExternalDefect build() {
    final _$result = _$v ?? new _$ExternalDefect._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
