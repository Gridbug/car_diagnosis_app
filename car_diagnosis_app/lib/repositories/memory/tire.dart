import 'package:car_diagnosis_app/data_model/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/memory/memory_repository.dart';

class MemoryTireRepository extends MemoryRepository<Tire> with TireRepository {
  MemoryTireRepository()
      : super([
          for (int carId = 1; carId <= 3; ++carId) ...{
            for (int tireId = 1; tireId <= 4; ++tireId) ...{
              Tire((b) => b
                ..id = tireId
                ..carId = carId
                ..tireSide = tireId),
            },
          },
        ]);
}
