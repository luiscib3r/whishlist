import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/data/repositories/repositories.dart';

part 'projects_event.dart';
part 'projects_state.dart';
part 'projects_bloc.freezed.dart';

@injectable
class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc(this._repository) : super(const _Initial());

  final ProjectRepository _repository;

  @override
  Stream<ProjectsState> mapEventToState(
    ProjectsEvent event,
  ) async* {
    yield* event.when(
      started: _started,
      delete: _delete,
    );
  }

  Stream<ProjectsState> _started() async* {
    yield const _Loading();

    final projects = _repository.getAll();

    yield _Ready(projects);
  }

  Stream<ProjectsState> _delete(int id) async* {
    yield const _Loading();

    _repository.remove(id);

    final projects = _repository.getAll();

    yield _Ready(projects);
  }
}
