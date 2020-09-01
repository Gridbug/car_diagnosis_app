import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/entities/car.dart';
import 'package:car_diagnosis_app/entities/custom_serializers.dart';
import 'package:car_diagnosis_app/entities/external_defect.dart';
import 'package:car_diagnosis_app/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/entities/tire.dart';
import 'package:car_diagnosis_app/entities/tire_photo.dart';

part 'serializers.g.dart';

@SerializersFor([
  Car,
  ExternalDefect,
  ExternalDefectPhoto,
  Tire,
  TirePhoto,
])
final Serializers serializers = (_$serializers.toBuilder()
// ..addPlugin(JsonPlugin())
      ..add(Uint8ListSerializer()))
    .build();
