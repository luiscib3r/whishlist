import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/theme/constants.dart';
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/tasks/tasks.dart';

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
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 4,
                ),
                Text(
                  task.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      taskTypes[task.type],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    ),
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
                    const Icon(
                      Icons.calendar_today,
                      color: primaryColor,
                      size: 16,
                    ),
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
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                taskStates.length,
                (index) => GestureDetector(
                  onTap: () {
                    task.state = index;
                    bloc.add(
                      TasksEvent.update(task),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: index == task.state ? Colors.green : primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        taskStates[index],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
