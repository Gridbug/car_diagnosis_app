import 'package:car_diagnosis_app/data_model/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/reactive_repository.dart';

mixin TirePhotoRepository on ReactiveRepository<TirePhoto, int> {
  static const String static_title = 'tire_photos';

  @override
  String get title => static_title;
}
