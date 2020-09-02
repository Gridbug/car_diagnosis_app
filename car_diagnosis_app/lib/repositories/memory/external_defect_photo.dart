import 'package:car_diagnosis_app/data_model/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/memory/memory_repository.dart';

class MemoryExternalDefectPhotoRepository extends MemoryRepository<ExternalDefectPhoto>
    with ExternalDefectPhotoRepository {
  MemoryExternalDefectPhotoRepository()
      : super([]);
}
