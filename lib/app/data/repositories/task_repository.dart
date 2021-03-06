import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:whishlist/objectbox.g.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/data/repositories/repository.dart';

@injectable
class TaskRepository extends Repository<Task> {
  TaskRepository(Store store) : super(store);
}
