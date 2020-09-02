import 'package:car_diagnosis_app/data_model/entities/entity.dart';
import 'package:car_diagnosis_app/repositories/reactive_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

abstract class MemoryRepository<T extends Entity<int>>
    implements ReactiveRepository<T, int> {
  @protected
  static final subjectsMap = Map<String, BehaviorSubject<List<Entity<int>>>>();

  @protected
  final BehaviorSubject<List<T>> subject;

  MemoryRepository(List<T> seed)
      : subject = BehaviorSubject<List<T>>.seeded(seed) {
    subjectsMap[title] = subject;
  }

  @override
  Future<int> create(Entity<int> entity) async {
    final list = await subject.first;

    int newId = 0;
    if (list.length > 0) {
      newId = list.reduce((a, b) => a.id > b.id ? a : b).id;
    } else {
      newId = 1;
    }

    final entityWithId = entity.rebuild((b) => b.id = newId);
    subject.add(list..add(entityWithId));

    return newId;
  }

  @override
  Stream<T> get(int id) => subject.map(
        (entityList) => entityList.firstWhere(
          (value) => value.id == id,
          orElse: () => null,
        ),
      );

  @override
  Stream<List<T>> getList(Iterable<int> ids) => subject.map(
        (entityList) => entityList
            .where(
              (value) => ids.contains(value.id),
            )
            .toList(),
      );

  get all => subject.stream;

  @override
  Future<void> update(T entity) async {
    final list = await subject.first;

    subject.add(
      list.where((s) => s.id != entity.id).toList()..add(entity),
    );
  }

  @override
  Future<void> delete(int id) async {
    final list = await subject.first;
    subject.add(
      list.where((s) => s.id != id).toList(),
    );
  }

  @override
  Future<void> deleteList(Iterable<int> ids) async {
    final list = await subject.first;
    subject.add(
      list.where((s) => !ids.contains(s.id)).toList(),
    );
  }

  @override
  void dispose() {
    subject.close();
  }
}
