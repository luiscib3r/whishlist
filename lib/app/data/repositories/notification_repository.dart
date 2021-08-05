import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/data/repositories/repository.dart';

@injectable
class NotificationRepository extends Repository<Notification> {
  NotificationRepository(Store store) : super(store);
}
