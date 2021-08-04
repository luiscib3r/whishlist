import 'package:objectbox/objectbox.dart';
import 'package:whishlist/app/data/models/models.dart';

@Entity()
class Task {
  Task({
    this.id = 0,
    required this.title,
    required this.description,
    required this.type,
    required this.dueDate,
    required this.resolver,
    required this.author,
    required this.state,
  });

  int id;
  String title;
  String description;
  DateTime dueDate;
  String resolver;
  String author;
  int state;
  int type;

  final project = ToOne<Project>();
}

mixin TaskType {
  static const onat = 0;
  static const inventario = 1;
  static const alquiler = 2;
  static const compraProducto = 3;
  static const transporte = 4;
}

mixin TaskState {
  static const nueva = 0;
  static const abierta = 1;
  static const enProceso = 2;
  static const cerrada = 3;
}
