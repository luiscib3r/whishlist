import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/app_page_route.dart';
import 'package:whishlist/app/dependencies/dependencies.dart';
import 'package:whishlist/tasks/tasks.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  static Route route() {
    return AppPageRoute(builder: (_) => const TasksPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksBloc>(
      create: (_) => getIt()
        ..add(
          const TasksEvent.started(),
        ),
      child: const TasksView(),
    );
  }
}
