import 'package:car_diagnosis_app/repositories/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/sqlite/car.dart';
import 'package:car_diagnosis_app/repositories/sqlite/external_defect.dart';
import 'package:car_diagnosis_app/repositories/sqlite/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/sqlite/tire.dart';
import 'package:car_diagnosis_app/repositories/sqlite/tire_photo.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sqlbrite/sqlbrite.dart';

//TODO: Make it statefull???
class SqliteRepositoryProviders extends StatelessWidget {
  final Widget child;
  final BriteDatabase db;
  final String userId;

  const SqliteRepositoryProviders({
    Key key,
    @required this.child,
    @required this.db,
    @required this.userId,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CarRepository>(
          create: (_) => db == null ? null : SqliteCarRepository(db, userId),
          dispose: (_, repo) => repo?.dispose(),
        ),
        Provider<TireRepository>(
          create: (_) => db == null ? null : SqliteTireRepository(db, userId),
          dispose: (_, repo) => repo?.dispose(),
        ),
        Provider<TirePhotoRepository>(
          create: (_) =>
              db == null ? null : SqliteTirePhotoRepository(db, userId),
          dispose: (_, repo) => repo?.dispose(),
        ),
        Provider<ExternalDefectRepository>(
          create: (_) =>
              db == null ? null : SqliteExternalDefectRepository(db, userId),
          dispose: (_, repo) => repo?.dispose(),
        ),
        Provider<ExternalDefectPhotoRepository>(
          create: (_) => db == null
              ? null
              : SqliteExternalDefectPhotoRepository(db, userId),
          dispose: (_, repo) => repo?.dispose(),
        ),
      ],
      child: child,
    );
  }
}
