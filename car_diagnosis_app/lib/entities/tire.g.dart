// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tire.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tire> _$tireSerializer = new _$TireSerializer();

class _$TireSerializer implements StructuredSerializer<Tire> {
  @override
  final Iterable<Type> types = const [Tire, _$Tire];
  @override
  final String wireName = 'Tire';

  @override
  Iterable<Object> serialize(Serializers serializers, Tire object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Tire deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TireBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Tire extends Tire {
  @override
  final int id;

  factory _$Tire([void Function(TireBuilder) updates]) =>
      (new TireBuilder()..update(updates)).build();

  _$Tire._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Tire', 'id');
    }
  }

  @override
  Tire rebuild(void Function(TireBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TireBuilder toBuilder() => new TireBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tire && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tire')..add('id', id)).toString();
  }
}

class TireBuilder implements Builder<Tire, TireBuilder> {
  _$Tire _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  TireBuilder();

  TireBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tire other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tire;
  }

  @override
  void update(void Function(TireBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tire build() {
    final _$result = _$v ?? new _$Tire._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
