import 'package:car_diagnosis_app/data_model/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/memory/memory_repository.dart';

class MemoryTirePhotoRepository extends MemoryRepository<TirePhoto> with TirePhotoRepository {
  MemoryTirePhotoRepository()
      : super([]);
}
