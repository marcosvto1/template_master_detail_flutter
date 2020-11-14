import '../../src/model/model_base.dart';

abstract class ServiceBase<T extends ModelBase> {
  Future<List<T>> findAll() async {}
  Future<T> findById() async {}
  Future<T> insert(T resource) async {}
  Future<T> update(T resource) async {}
  Future<bool> delete(T resource) async {}
}
