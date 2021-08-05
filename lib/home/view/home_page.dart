import 'package:flutter/material.dart';
import 'package:whishlist/app/app_page_route.dart';
import 'package:whishlist/app/layouts/main_layout.dart';
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/notifications/notifications.dart';
import 'package:whishlist/projects/projects.dart';
import 'package:whishlist/tasks/tasks.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route route() {
    return AppPageRoute(builder: (_) => const HomePage());
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return MainLayout(
      tabs: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.folder_outlined),
          label: l10n.projects,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.list),
          label: l10n.tasks,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.notifications),
          label: l10n.notifications,
        ),
      ],
      children: const [
        ProjectsPage(),
        TasksPage(),
        NotificationsView(),
      ],
    );
  }
}
