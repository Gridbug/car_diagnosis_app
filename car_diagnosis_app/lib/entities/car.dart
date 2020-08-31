import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'car.g.dart';

abstract class Car implements Built<Car, CarBuilder> {
  static Serializer<Car> get serializer => _$carSerializer;

  int get id;

  String get name;

  factory Car([void Function(CarBuilder) updates]) = _$Car;

  Car._();
}
