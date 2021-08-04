import 'package:objectbox/objectbox.dart';
import 'package:whishlist/app/data/models/task.dart';

@Entity()
class Project {
  Project({
    this.id = 0,
    required this.name,
  });

  int id;
  String name;

  @Backlink()
  final tasks = ToMany<Task>();
}
