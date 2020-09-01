import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

class Uint8ListSerializer implements PrimitiveSerializer<Uint8List> {
  final bool structured = false;
  @override
  final Iterable<Type> types = BuiltList<Type>([Uint8List]);
  @override
  final String wireName = 'Uint8List';

  @override
  Object serialize(Serializers serializers, Uint8List list,
      {FullType specifiedType = FullType.unspecified}) {
    try {
      return list;
    } catch(_) {
      return null;
    }
  }

  @override
  Uint8List deserialize(Serializers serializers, serialized,
      {FullType specifiedType = FullType.unspecified}) {
    try {
      return serialized as Uint8List;
    } catch(_) {
      return null;
    }
  }
}