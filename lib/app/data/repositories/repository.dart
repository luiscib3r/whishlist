import 'package:objectbox/objectbox.dart';

class Repository<T> {
  Repository(this._store);

  final Store _store;

  Box<T> get box => _store.box<T>();

  List<T> getAll() => box.query().build().find();

  T? get(int id) => box.get(id);

  int put(T object) => box.put(object);

  bool remove(int id) => box.remove(id);
}
