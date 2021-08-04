import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/data/repositories/repository.dart';

@injectable
class ProjectRepository extends Repository<Project> {
  ProjectRepository(Store store) : super(store);

  List<Task>? getTasks(int id) => get(id)?.tasks.toList();
}
