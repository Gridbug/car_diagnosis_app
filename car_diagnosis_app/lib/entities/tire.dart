import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tire.g.dart';

abstract class Tire implements Built<Tire, TireBuilder> {
  static Serializer<Tire> get serializer => _$tireSerializer;

  int get id;

  factory Tire([void Function(TireBuilder) updates]) = _$Tire;

  Tire._();
}
