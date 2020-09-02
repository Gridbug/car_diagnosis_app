import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/data_model/entities/entity.dart';

part 'external_defect.g.dart';

abstract class ExternalDefect implements Built<ExternalDefect, ExternalDefectBuilder>, Entity<int> {
  ExternalDefect._();
  factory ExternalDefect([void Function(ExternalDefectBuilder) updates]) = _$ExternalDefect;

  static Serializer<ExternalDefect> get serializer => _$externalDefectSerializer;

  int get id;

  @BuiltValueField(wireName: 'car_id')
  int get carId;

  @nullable
  String get name;
}
