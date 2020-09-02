import 'package:car_diagnosis_app/data_model/entities/entity.dart';

abstract class ReactiveRepository<T extends Entity<ID>, ID> {
  String get title;

  Future<ID> create(T item);

  Stream<T> get(ID id);

  Stream<List<T>> getList(Iterable<ID> ids);

  Stream<List<T>> get all;

  Future<void> update(T item);

  Future<void> delete(ID id);

  Future<void> deleteList(Iterable<ID> ids);

  void dispose();
}
