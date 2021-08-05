import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/app_page_route.dart';
import 'package:whishlist/app/dependencies/dependencies.dart';
import 'package:whishlist/projects/bloc/projects_bloc.dart';
import 'package:whishlist/projects/view/projects_view.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  static Route route() {
    return AppPageRoute(builder: (_) => const ProjectsPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectsBloc>(
      create: (_) => getIt<ProjectsBloc>()
        ..add(
          const ProjectsEvent.started(),
        ),
      child: const ProjectsView(),
    );
  }
}
