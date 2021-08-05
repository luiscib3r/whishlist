import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whishlist/app/theme/constants.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/app/data/models/models.dart' as m;
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/notifications/notifications.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer t) => _reload(),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  NotificationsBloc get bloc => context.read();

  void _reload() {
    log('Loading notifications');
    bloc.add(const NotificationsEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.notifications),
      ),
      body: BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox(),
          loading: () => const Loading(),
          ready: (notifications) => ready(context, notifications),
        ),
      ),
    );
  }

  Widget ready(BuildContext context, List<m.Notification> notifications) {
    final l10n = context.l10n;

    if (notifications.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              Icons.folder_open,
              size: 64,
            ),
          ),
          Text(l10n.noData),
        ],
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          ...notifications.map(
            (e) => ListTile(
              title: Text(e.title),
              subtitle: Text(e.message),
              leading: const Icon(
                Icons.notifications,
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
