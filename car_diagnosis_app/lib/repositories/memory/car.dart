import 'package:car_diagnosis_app/data_model/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/car.dart';
import 'package:car_diagnosis_app/repositories/memory/memory_repository.dart';

class MemoryCarRepository extends MemoryRepository<Car> with CarRepository {
  MemoryCarRepository()
      : super([
          for (int carId = 1; carId <= 3; ++carId) ...{
            Car((b) => b
              ..id = carId
              ..name = "Машина №$carId"),
          },
        ]);
}
