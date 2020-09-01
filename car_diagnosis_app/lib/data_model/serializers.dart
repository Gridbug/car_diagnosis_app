import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/data_model/entities/car.dart';
import 'package:car_diagnosis_app/data_model/custom_serializers.dart';
import 'package:car_diagnosis_app/data_model/entities/external_defect.dart';
import 'package:car_diagnosis_app/data_model/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/data_model/entities/tire.dart';
import 'package:car_diagnosis_app/data_model/entities/tire_photo.dart';

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
