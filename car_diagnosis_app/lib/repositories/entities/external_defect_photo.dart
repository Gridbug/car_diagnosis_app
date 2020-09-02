import 'package:car_diagnosis_app/data_model/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/reactive_repository.dart';

mixin ExternalDefectPhotoRepository on ReactiveRepository<ExternalDefectPhoto, int> {
  static const String static_title = 'external_defect_photos';

  @override
  String get title => static_title;
}