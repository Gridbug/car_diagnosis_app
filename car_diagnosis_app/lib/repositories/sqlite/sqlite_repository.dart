import 'dart:developer';
import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:car_diagnosis_app/data_model/entities/entity.dart';
import 'package:car_diagnosis_app/data_model/serializers.dart';
import 'package:meta/meta.dart';
import 'package:car_diagnosis_app/repositories/reactive_repository.dart';
import 'package:sqlbrite/sqlbrite.dart';

abstract class SqliteRepository<T extends Entity<int>>
    implements ReactiveRepository<T, int> {
  @protected
  final BriteDatabase db;

  final String userId;

  @protected
  List<String> get references => [];

  SqliteRepository(this.db, this.userId) : assert(db != null);

  @override
  Future<int> create(Entity<int> entity, [Map<String, dynamic> meta]) async {
    final now = DateTime.now();
    final serialized = (serializers.serialize(entity) as Map)..remove('\$');
    final entityId = await db.insert(
      title,
      serialized,
    );

    await _insert(title, serialized, now, meta);

    return entityId;
  }

  @override
  Stream<T> get(int id) => db.createQuery(
        title,
        where: 'id = ?',
        whereArgs: [id],
      ).mapToOneOrDefault(
        (map) => serializers.deserialize(map, specifiedType: FullType(T)),
        defaultValue: null,
      );

  @override
  Stream<List<T>> getList(Iterable<int> ids) => db
      .createQuery(
        title,
        where: 'id in (${ids.join(',')})',
      )
      .mapToList(
        (map) => serializers.deserialize(map, specifiedType: FullType(T)),
      );

  Stream<List<T>> get all => db
      .createQuery(
        title,
      )
      .mapToList(
        (map) => serializers.deserialize(map, specifiedType: FullType(T)),
      );

  @override
  Future<int> update(T entity, [Map<String, dynamic> meta]) async {
    final now = DateTime.now();
    final serialized = (serializers.serialize(entity) as Map)..remove('\$');
    final numUpdatedRows = await db.update(
      title,
      serialized,
      where: 'id = ?',
      whereArgs: [entity.id],
    );

    await _update(title, entity.id.toString(), serialized, now, meta);

    return numUpdatedRows;
  }

  @override
  Future<int> delete(int id, [Map<String, dynamic> meta]) async {
    final now = DateTime.now();
    final sql = 'delete from $title where id = $id';
    final numDeletedRows = await db.rawDeleteAndTrigger(
      [title, ...references],
      'delete from $title where id = ?',
      [id],
    );

    _save(sql, now, meta);

    return numDeletedRows;
  }

  @override
  Future<int> deleteList(Iterable<int> ids, [Map<String, dynamic> meta]) async {
    final now = DateTime.now();
    final sql = 'delete from $title where id in (${ids.join(',')})';
    final numDeletedRows = await db.rawDeleteAndTrigger(
      [title, ...references],
      sql,
    );

    _save(sql, now, meta);

    return numDeletedRows;
  }

  @override
  void dispose() {
    // nothing to dispose
  }

  static const _encode = {
    0: '0',
    1: '1',
    2: '2',
    3: '3',
    4: '4',
    5: '5',
    6: '6',
    7: '7',
    8: '8',
    9: '9',
    10: 'a',
    11: 'b',
    12: 'c',
    13: 'd',
    14: 'e',
    15: 'f',
  };

  Future<void> _insert(
    String table,
    Map<String, dynamic> arguments,
    DateTime at, [
    Map<String, dynamic> meta,
  ]) async {
    return await _save(
      "insert into $table (${arguments.keys.join(",")}) values(" +
          arguments.values
              .map((v) => (v is Uint8List
                  ? "x'${v.map((num) => _encode[num ~/ 16] + _encode[num % 16]).join()}'"
                  : "\"$v\""))
              .join(",") +
          ")",
      at,
      meta,
    );
  }

  Future<void> _update(
    String table,
    String id,
    Map<String, dynamic> arguments,
    DateTime at, [
    Map<String, dynamic> meta,
  ]) async {
    return await _save(
      "update $table set " +
          arguments.keys
              .map((key) =>
                  "$key = " +
                  (arguments[key] is Uint8List
                      ? "x'${arguments[key].map((num) => _encode[num ~/ 16] + _encode[num % 16]).join()}'"
                      : "\"${arguments[key]}\""))
              .join(",") +
          " where id = $id",
      at,
      meta,
    );
  }

  Future<void> _save(String sql, DateTime at, Map<String, dynamic> meta) async {
    log(sql, name: "save");
    await db.insert("query_log", {
      "user_id": userId,
      "executed_at": (serializers.serialize(at) as Map)[""],
      "json_meta": json.encode(meta),
      "query": sql
    });
  }
}
