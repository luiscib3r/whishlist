import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/data/models/project.dart';
import 'package:whishlist/app/data/repositories/repositories.dart';

part 'create_project_event.dart';
part 'create_project_state.dart';
part 'create_project_bloc.freezed.dart';

@injectable
class CreateProjectBloc extends Bloc<CreateProjectEvent, CreateProjectState> {
  CreateProjectBloc(
    this._repository,
  ) : super(CreateProjectState.initial());

  final ProjectRepository _repository;

  @override
  Stream<CreateProjectState> mapEventToState(
    CreateProjectEvent event,
  ) async* {
    yield* event.when(
      nameChanged: _nameChanged,
      descriptionChanged: _descriptionChanged,
      submit: _submit,
    );
  }

  Stream<CreateProjectState> _nameChanged(String value) async* {
    final valid = value.isNotEmpty && state.description.isNotEmpty;

    yield state.copyWith(
      name: value,
      isValid: valid,
    );
  }

  Stream<CreateProjectState> _descriptionChanged(String value) async* {
    final valid = value.isNotEmpty && state.name.isNotEmpty;

    yield state.copyWith(
      description: value,
      isValid: valid,
    );
  }

  Stream<CreateProjectState> _submit() async* {
    if (state.isValid) {
      _repository.put(
        Project(
          name: state.name,
          description: state.description,
        ),
      );

      yield state.copyWith(isDone: true);
    }
  }
}
