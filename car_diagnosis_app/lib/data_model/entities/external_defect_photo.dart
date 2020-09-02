import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/data_model/entities/entity.dart';

part 'external_defect_photo.g.dart';

abstract class ExternalDefectPhoto implements Built<ExternalDefectPhoto, ExternalDefectPhotoBuilder>, Entity<int> {
  ExternalDefectPhoto._();
  factory ExternalDefectPhoto([void Function(ExternalDefectPhotoBuilder) updates]) = _$ExternalDefectPhoto;

  static Serializer<ExternalDefectPhoto> get serializer => _$externalDefectPhotoSerializer;

  @nullable
  int get id;

  @BuiltValueField(wireName: 'external_defect_id')
  int get externalDefectId;

  @nullable
  @BuiltValueField(wireName: 'photo')
  Uint8List get photo;

  @nullable
  String get description;
}