import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:whishlist/app/data/models/models.dart';

@injectable
class TaskRepository {
  TaskRepository(this._store);

  final Store _store;

  Box<Task> get _box => _store.box<Task>();

  List<Task> getTasks() => _box.query().build().find();

  Task? getTask(int id) => _box.get(id);

  int putTask(Task task) => _box.put(task);

  bool removeTask(int id) => _box.remove(id);
}
