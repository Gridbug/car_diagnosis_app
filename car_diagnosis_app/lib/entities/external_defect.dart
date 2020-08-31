import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_defect.g.dart';

abstract class ExternalDefect implements Built<ExternalDefect, ExternalDefectBuilder> {
  static Serializer<ExternalDefect> get serializer => _$externalDefectSerializer;

  int get id;

  String get name;

  factory ExternalDefect([void Function(ExternalDefectBuilder) updates]) = _$ExternalDefect;

  ExternalDefect._();
}
