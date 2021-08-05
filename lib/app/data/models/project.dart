import 'package:objectbox/objectbox.dart';
import 'package:whishlist/app/data/models/task.dart';

@Entity()
class Project {
  Project({
    this.id = 0,
    required this.name,
    required this.description,
  });

  int id;
  String name;
  String description;

  @Backlink()
  final tasks = ToMany<Task>();
}
