import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/app_page_route.dart';
import 'package:whishlist/app/dependencies/dependencies.dart';
import 'package:whishlist/notifications/notifications.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  static Route route() {
    return AppPageRoute(builder: (_) => const NotificationsPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
      create: (_) => getIt()
        ..add(
          const NotificationsEvent.started(),
        ),
      child: const NotificationsView(),
    );
  }
}
