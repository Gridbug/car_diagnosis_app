import 'dart:async';
import 'dart:developer';

import 'package:car_diagnosis_app/global_providers/memory_repository_provider.dart';
import 'package:car_diagnosis_app/global_providers/sqlite_repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

import 'package:car_diagnosis_app/app.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlbrite/sqlbrite.dart';

void main() async {
  // await initializeDateFormatting(Intl.defaultLocale);

  runApp(
    MemoryRepositoryProviders(
      child: MyApp(),
    ),
  );

  // runApp(
  //   SqliteRepositoryProviders(
  //     db: await initDatabase(),
  //     userId: "1",
  //     child: MyApp(),
  //   ),
  // );
}

Future<BriteDatabase> initDatabase() async {
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'car_diagnosis_app.db');

  final migrations = [
    '1_db_scheme.sql',
  ]
      .map(
        (migrationFileName) => 'assets/migrations/' + migrationFileName,
      )
      .map(
        (migrationPath) => rootBundle.loadString(migrationPath).then(
              (val) => val
                  .replaceAll('\n', ' ')
                  .split(';')
                  .where((s) => s.isNotEmpty),
            ),
      );

  /// with new migrations
  Database db = await openDatabase(
    path,
    version: migrations.length,
    onConfigure: (Database db) async {
      await db.execute('PRAGMA foreign_keys = ON');
    },
    onCreate: (Database db, int newVersion) async {
      final oldVersion = 0;
      // final now = DateTime.now();

      for (final statements
          in migrations.skip(oldVersion).take(newVersion - oldVersion)) {
        for (final statement in await statements) {
          try {
            _log(statement);
            await db.execute(statement);
            // await db.insert("query_log", {
            //   "user_id": userId,
            //   "executed_at": (serializers.serialize(now) as Map)[""],
            //   "json_meta": null,
            //   "query": statement
            // });
          } on DatabaseException catch (e) {
            _log("Wrong query", error: e);
          }
        }
      }
      // await db.insert("query_log", {
      //   "user_id": userId,
      //   "executed_at": (serializers.serialize(now) as Map)[""],
      //   "json_meta": null,
      //   "query": "pragma user_version = $newVersion"
      // });
    },
    onUpgrade: (Database db, int oldVersion, int newVersion) async {
      // final now = DateTime.now();

      for (final statements
          in migrations.skip(oldVersion).take(newVersion - oldVersion)) {
        for (final statement in await statements) {
          try {
            _log(statement);
            await db.execute(statement);
            // await db.insert("query_log", {
            //   "user_id": userId,
            //   "executed_at": (serializers.serialize(now) as Map)[""],
            //   "json_meta": null,
            //   "query": statement
            // });
          } on DatabaseException catch (e) {
            _log("Wrong query", error: e);
          }
        }
      }
      // await db.insert("query_log", {
      //   "user_id": userId,
      //   "executed_at": (serializers.serialize(now) as Map)[""],
      //   "json_meta": null,
      //   "query": "pragma user_version = $newVersion"
      // });
    },
    onOpen: (Database db) async {
      _log(db.path);
    },
  );

  final streamDB = BriteDatabase(db);

  // final profileRepo = SqfliteProfileRepository(streamDB, userId);
  // if (await profileRepo.current.first == null) {
  //   if (User().registerFields != null) {
  //     final fields = User().registerFields;
  //     try {
  //       await profileRepo.create(
  //         Profile((b) => b
  //           ..id = int.tryParse(userId)
  //           ..photo = fields.photo
  //           ..firstName = fields.firstName
  //           ..lastName = fields.lastName
  //           ..email = fields.email
  //           ..phone = fields.phone
  //           ..emailConfirmed = 0),
  //       );
  //     } catch (e) {
  //       _log("profile creation error", error: e);
  //       return null;
  //     }
  //   } else {
  //     _log("profile creation was interrupted, creation empty profile");
  //     try {
  //       await profileRepo.create(
  //         Profile((b) => b
  //           ..id = int.tryParse(userId)
  //           ..photo = null
  //           ..firstName = ""
  //           ..lastName = null
  //           ..email = ""
  //           ..phone = null
  //           ..emailConfirmed = 0),
  //       );
  //     } catch (e) {
  //       _log("profile creation error", error: e);
  //       return null;
  //     }
  //   }
  // }
  return streamDB;
}

void _log(
  String message, {
  DateTime time,
  int sequenceNumber,
  int level: 0,
  String name: 'DatabaseProvider',
  Zone zone,
  Object error,
  StackTrace stackTrace,
}) {
  log(message,
      time: time,
      sequenceNumber: sequenceNumber,
      level: level,
      name: name,
      zone: zone,
      error: error);
}
