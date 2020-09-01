import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_defect.g.dart';

abstract class ExternalDefect implements Built<ExternalDefect, ExternalDefectBuilder> {
  ExternalDefect._();
  factory ExternalDefect([void Function(ExternalDefectBuilder) updates]) = _$ExternalDefect;

  static Serializer<ExternalDefect> get serializer => _$externalDefectSerializer;

  int get id;

  @BuiltValueField(wireName: 'car_id')
  int get carId;

  @nullable
  String get name;
}
