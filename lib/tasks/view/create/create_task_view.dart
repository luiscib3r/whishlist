import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/tasks/tasks.dart';

class CreateTaskView extends StatelessWidget {
  const CreateTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<CreateTaskBloc>();

    return BlocConsumer<CreateTaskBloc, CreateTaskState>(
      listener: (context, state) {
        if (state.isDone) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: AppBarTitle(l10n.createTask),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: l10n.title,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.fieldRequired;
                      }
                    },
                    autovalidateMode: AutovalidateMode.always,
                    onChanged: (value) {
                      bloc.add(
                        CreateTaskEvent.titleChanged(value),
                      );
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: l10n.description,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.fieldRequired;
                      }
                    },
                    autovalidateMode: AutovalidateMode.always,
                    onChanged: (value) {
                      bloc.add(
                        CreateTaskEvent.descriptionChanged(value),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Spacer(),
                      DateInput(
                        onChange: (value) {
                          bloc.add(
                            CreateTaskEvent.dueDateChanged(value),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      ResolverInput(
                        onChange: (value) {
                          bloc.add(
                            CreateTaskEvent.resolverChanged(value),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      TypeInput(
                        onChange: (value) {
                          bloc.add(
                            CreateTaskEvent.typeChanged(value),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      ProjectInput(
                        projects: state.projects,
                        onChange: (value) {
                          bloc.add(
                            CreateTaskEvent.projectChanged(value),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            key: const Key('submitTask'),
            heroTag: 'task',
            onPressed: state.isValid
                ? () {
                    bloc.add(
                      const CreateTaskEvent.submit(),
                    );
                  }
                : null,
            elevation: state.isValid ? null : 0,
            backgroundColor: state.isValid ? null : Colors.grey,
            child: const Icon(Icons.check),
          ),
        );
      },
    );
  }
}
