import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/data/models/models.dart';

const AndroidNotificationChannel _channel = AndroidNotificationChannel(
  'whishlist_channel', // id
  'Whishlist', // title
  'Whishlist', // description
  importance: Importance.high,
);

@injectable
class NotificationService {
  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  static final NotificationService _notificationService =
      NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void show(Notification notification) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.message,
      NotificationDetails(
        android: AndroidNotificationDetails(
          _channel.id,
          _channel.name,
          _channel.description,
          icon: 'launcher_icon',
        ),
      ),
    );
  }
}
