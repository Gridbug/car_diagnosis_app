import 'package:car_diagnosis_app/data_model/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/reactive_repository.dart';

mixin ExternalDefectRepository on ReactiveRepository<ExternalDefect, int> {
  static const String static_title = 'external_defects';

  @override
  String get title => static_title;
}
