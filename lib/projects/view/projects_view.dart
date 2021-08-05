import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/theme/constants.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/projects/projects.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<ProjectsBloc>();

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
        key: const Key('createProject'),
        heroTag: 'project',
        onPressed: () async {
          await Navigator.push(
            context,
            CreateProjectPage.route(),
          );

          bloc.add(
            const ProjectsEvent.started(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget ready(BuildContext context, List<Project> projects) {
    final l10n = context.l10n;
    final bloc = context.read<ProjectsBloc>();

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

    return SingleChildScrollView(
      child: Column(
        children: [
          ...projects.map(
            (e) => ListTile(
              title: Text(e.name),
              subtitle: Text(e.description),
              leading: const Icon(
                Icons.folder_rounded,
                color: primaryColor,
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  ConfirmDialog(
                    message: l10n.deleteConfirm,
                    onConfirm: () {
                      bloc.add(
                        ProjectsEvent.delete(e.id),
                      );
                    },
                  ).show(context);
                },
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
