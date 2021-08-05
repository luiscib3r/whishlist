import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/theme/constants.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/tasks/tasks.dart';

class TasksView extends StatelessWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<TasksBloc>();

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.tasks),
      ),
      body: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox(),
          loading: () => const Loading(),
          ready: (tasks) => ready(context, tasks),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('createTask'),
        heroTag: 'task',
        onPressed: () async {
          await Navigator.push(
            context,
            CreateTaskPage.route(),
          );

          bloc.add(
            const TasksEvent.started(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget ready(BuildContext context, List<Task> tasks) {
    final l10n = context.l10n;

    if (tasks.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              Icons.list,
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
          ...tasks.map(
            (e) => TaskCard(task: e),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  String get dateValue => DateFormat.yMMMd().format(task.dueDate);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<TasksBloc>();

    return Card(
      elevation: 0.1,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 4,
                ),
                Text(
                  task.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 4,
                ),
                Text(
                  task.description,
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_today, color: primaryColor),
                    const SizedBox(width: 8),
                    Text(dateValue),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    ConfirmDialog(
                      message: l10n.deleteConfirm,
                      onConfirm: () {
                        bloc.add(
                          TasksEvent.delete(task.id),
                        );
                      },
                    ).show(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
