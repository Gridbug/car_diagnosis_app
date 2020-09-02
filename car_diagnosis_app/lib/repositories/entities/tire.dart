import 'package:car_diagnosis_app/data_model/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/reactive_repository.dart';

mixin TireRepository on ReactiveRepository<Tire, int> {
  static const String static_title = 'tires';

  @override
  String get title => static_title;
}