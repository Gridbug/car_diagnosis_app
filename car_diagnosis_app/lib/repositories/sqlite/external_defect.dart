import 'package:car_diagnosis_app/data_model/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/sqlite/sqlite_repository.dart';
import 'package:sqlbrite/sqlbrite.dart';

class SqliteExternalDefectRepository extends SqliteRepository<ExternalDefect> with ExternalDefectRepository {
  SqliteExternalDefectRepository(BriteDatabase db, String userId) : super(db, userId);

  @override
  List<String> get references => [
    ExternalDefectPhotoRepository.static_title,
  ];
}
