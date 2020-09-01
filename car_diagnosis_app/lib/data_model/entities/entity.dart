import 'package:built_value/built_value.dart';

part 'entity.g.dart';

@BuiltValue(instantiable: false)
abstract class Entity<ID> {
  ID get id;

  Entity<ID> rebuild(void Function(EntityBuilder<ID>) updates);
}
