import 'package:car_diagnosis_app/data_model/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/sqlite/sqlite_repository.dart';
import 'package:sqlbrite/sqlbrite.dart';

class SqliteTirePhotoRepository extends SqliteRepository<TirePhoto> with TirePhotoRepository {
  SqliteTirePhotoRepository(BriteDatabase db, String userId) : super(db, userId);

  @override
  List<String> get references => [];
}
