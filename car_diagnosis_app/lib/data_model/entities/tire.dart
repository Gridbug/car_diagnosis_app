import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/data_model/entities/entity.dart';

part 'tire.g.dart';

abstract class Tire implements Built<Tire, TireBuilder>, Entity<int> {
  Tire._();
  factory Tire([void Function(TireBuilder) updates]) = _$Tire;

  static Serializer<Tire> get serializer => _$tireSerializer;

  @nullable
  int get id;

  @BuiltValueField(wireName: 'car_id')
  int get carId;

  @BuiltValueField(wireName: 'tire_side')
  int get tireSide;
}
