import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';
import 'package:whishlist/projects/bloc/create_project_bloc.dart';

class CreateProjectView extends StatelessWidget {
  const CreateProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<CreateProjectBloc>();

    return BlocConsumer<CreateProjectBloc, CreateProjectState>(
      listener: (context, state) {
        if (state.isDone) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: AppBarTitle(l10n.createProject),
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
                      labelText: l10n.name,
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
                        CreateProjectEvent.nameChanged(value),
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
                        CreateProjectEvent.descriptionChanged(value),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: state.isValid
                ? () {
                    bloc.add(
                      const CreateProjectEvent.submit(),
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
