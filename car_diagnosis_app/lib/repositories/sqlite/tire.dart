import 'package:car_diagnosis_app/data_model/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/sqlite/sqlite_repository.dart';
import 'package:sqlbrite/sqlbrite.dart';

class SqliteTireRepository extends SqliteRepository<Tire> with TireRepository {
  SqliteTireRepository(BriteDatabase db, String userId) : super(db, userId);

  @override
  List<String> get references => [
        TirePhotoRepository.static_title,
      ];
}
