import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/entities/entity.dart';

part 'tire_photo.g.dart';

abstract class TirePhoto implements Built<TirePhoto, TirePhotoBuilder>, Entity<int> {
  TirePhoto._();
  factory TirePhoto([void Function(TirePhotoBuilder) updates]) = _$TirePhoto;

  static Serializer<TirePhoto> get serializer => _$tirePhotoSerializer;

  int get id;

  @BuiltValueField(wireName: 'tire_id')
  int get tireId;

  @nullable
  @BuiltValueField(wireName: 'photo')
  Uint8List get photo;

  @nullable
  String get description;
}