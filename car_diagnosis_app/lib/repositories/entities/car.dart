import 'package:car_diagnosis_app/data_model/entities/car.dart';
import 'package:car_diagnosis_app/repositories/reactive_repository.dart';

mixin CarRepository on ReactiveRepository<Car, int> {
  static const String static_title = 'cars';

  @override
  String get title => static_title;
}
