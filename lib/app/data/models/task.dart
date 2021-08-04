import 'package:objectbox/objectbox.dart';

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
  final String title;
  final String description;
  final DateTime dueDate;
  final String resolver;
  final String author;
  final int state;
  final int type;
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
