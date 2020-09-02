import 'package:car_diagnosis_app/data_model/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/memory/memory_repository.dart';

class MemoryExternalDefectRepository extends MemoryRepository<ExternalDefect>
    with ExternalDefectRepository {
  MemoryExternalDefectRepository()
      : super([
          for (int carId = 1; carId <= 3; ++carId) ...{
            for (int externalDefectId = 1;
                externalDefectId <= 3;
                ++externalDefectId) ...{
              ExternalDefect((b) => b
                ..id = externalDefectId
                ..carId = carId
                ..name = "Дефект №$externalDefectId"),
            },
          },
        ]);
}
