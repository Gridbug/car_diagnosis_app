import 'package:car_diagnosis_app/data_model/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/sqlite/sqlite_repository.dart';
import 'package:sqlbrite/sqlbrite.dart';

class SqliteCarRepository extends SqliteRepository<Car> with CarRepository {
  SqliteCarRepository(BriteDatabase db, String userId) : super(db, userId);

  @override
  List<String> get references => [
        TireRepository.static_title,
        ExternalDefectRepository.static_title,
      ];
}
