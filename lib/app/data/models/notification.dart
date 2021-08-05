import 'package:objectbox/objectbox.dart';

@Entity()
class Notification {
  Notification({
    this.id = 0,
    required this.title,
    required this.message,
  });

  int id;
  String title;
  String message;
}
