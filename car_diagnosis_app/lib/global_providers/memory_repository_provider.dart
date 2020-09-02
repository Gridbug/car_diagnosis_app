import 'package:car_diagnosis_app/repositories/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect.dart';
import 'package:car_diagnosis_app/repositories/entities/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/entities/tire.dart';
import 'package:car_diagnosis_app/repositories/entities/tire_photo.dart';
import 'package:car_diagnosis_app/repositories/memory/car.dart';
import 'package:car_diagnosis_app/repositories/memory/external_defect.dart';
import 'package:car_diagnosis_app/repositories/memory/external_defect_photo.dart';
import 'package:car_diagnosis_app/repositories/memory/tire.dart';
import 'package:car_diagnosis_app/repositories/memory/tire_photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MemoryRepositoryProviders extends StatelessWidget {
  final Widget child;

  const MemoryRepositoryProviders({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CarRepository>(
          create: (_) => MemoryCarRepository(),
          dispose: (_, repo) => repo.dispose(),
        ),
        Provider<TireRepository>(
          create: (_) => MemoryTireRepository(),
          dispose: (_, repo) => repo.dispose(),
        ),
        Provider<TirePhotoRepository>(
          create: (_) => MemoryTirePhotoRepository(),
          dispose: (_, repo) => repo.dispose(),
        ),
        Provider<ExternalDefectRepository>(
          create: (_) => MemoryExternalDefectRepository(),
          dispose: (_, repo) => repo.dispose(),
        ),
        Provider<ExternalDefectPhotoRepository>(
          create: (_) => MemoryExternalDefectPhotoRepository(),
          dispose: (_, repo) => repo.dispose(),
        ),
      ],
      child: child,
    );
  }
}
