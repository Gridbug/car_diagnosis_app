import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/data_model/entities/entity.dart';

part 'car.g.dart';

abstract class Car implements Built<Car, CarBuilder>, Entity<int> {
  Car._();
  factory Car([void Function(CarBuilder) updates]) = _$Car;

  static Serializer<Car> get serializer => _$carSerializer;

  @nullable
  int get id;

  String get name;
}
