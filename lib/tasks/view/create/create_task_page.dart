import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/app_page_route.dart';
import 'package:whishlist/app/dependencies/dependencies.dart';
import 'package:whishlist/tasks/tasks.dart';

class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  static Route route() {
    return AppPageRoute(builder: (_) => const CreateTaskPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateTaskBloc>(
      create: (_) => getIt()
        ..add(
          const CreateTaskEvent.loadProjects(),
        ),
      child: const CreateTaskView(),
    );
  }
}
