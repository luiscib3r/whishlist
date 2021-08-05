import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/data/models/task.dart';
import 'package:whishlist/app/data/repositories/repositories.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

@injectable
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(this._repository) : super(const _Initial());

  final TaskRepository _repository;

  @override
  Stream<TasksState> mapEventToState(
    TasksEvent event,
  ) async* {
    yield* event.when(
      started: _started,
      delete: _delete,
      update: _update,
    );
  }

  Stream<TasksState> _started() async* {
    yield const _Loading();

    final tasks = _repository.getAll();

    yield _Ready(tasks);
  }

  Stream<TasksState> _delete(int id) async* {
    yield const _Loading();

    _repository.remove(id);

    final tasks = _repository.getAll();

    yield _Ready(tasks);
  }

  Stream<TasksState> _update(Task task) async* {
    yield const _Loading();

    _repository.put(task);

    final tasks = _repository.getAll();

    yield _Ready(tasks);
  }
}
