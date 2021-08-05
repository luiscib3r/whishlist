import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/projects/projects.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.projects),
      ),
      body: BlocBuilder<ProjectsBloc, ProjectsState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox(),
          loading: () => const Loading(),
          ready: (projects) => ready(context, projects),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CreateProjectPage.route(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget ready(BuildContext context, List<Project> projects) {
    final l10n = context.l10n;

    if (projects.isEmpty) {
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

    return const Center(
      child: Text('ok'),
    );
  }
}
