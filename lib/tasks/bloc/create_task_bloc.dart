import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/data/repositories/repositories.dart';

part 'create_task_event.dart';
part 'create_task_state.dart';
part 'create_task_bloc.freezed.dart';

@injectable
class CreateTaskBloc extends Bloc<CreateTaskEvent, CreateTaskState> {
  CreateTaskBloc(
    this._repository,
  ) : super(CreateTaskState.initial());

  final TaskRepository _repository;

  @override
  Stream<CreateTaskState> mapEventToState(
    CreateTaskEvent event,
  ) async* {
    yield* event.when(
      titleChanged: _nameChanged,
      descriptionChanged: _descriptionChanged,
      submit: _submit,
      dueDateChanged: _dueDateChanged,
      resolverChanged: _resolverChanged,
      typeChanged: _typeChanged,
    );
  }

  Stream<CreateTaskState> _nameChanged(String value) async* {
    final valid = value.isNotEmpty && state.description.isNotEmpty;

    yield state.copyWith(
      title: value,
      isValid: valid,
    );
  }

  Stream<CreateTaskState> _descriptionChanged(String value) async* {
    final valid = value.isNotEmpty && state.title.isNotEmpty;

    yield state.copyWith(
      description: value,
      isValid: valid,
    );
  }

  Stream<CreateTaskState> _dueDateChanged(DateTime value) async* {
    yield state.copyWith(
      dueDate: value,
    );
  }

  Stream<CreateTaskState> _resolverChanged(String value) async* {
    yield state.copyWith(
      resolver: value,
    );
  }

  Stream<CreateTaskState> _typeChanged(String value) async* {
    yield state.copyWith(
      type: _getType(value),
    );
  }

  int _getType(String value) {
    switch (value) {
      case 'ONAT':
        return TaskType.onat;
      case 'Inventario':
        return TaskType.inventario;
      case 'Alquiler':
        return TaskType.alquiler;
      case 'Compra Producto':
        return TaskType.compraProducto;
      case 'Transporte':
        return TaskType.transporte;
    }

    return TaskType.onat;
  }

  Stream<CreateTaskState> _submit() async* {
    if (state.isValid) {
      _repository.put(
        Task(
          title: state.title,
          description: state.description,
          author: faker.person.name(),
          dueDate: state.dueDate,
          resolver: state.resolver,
          type: state.type,
          state: TaskState.nueva,
        ),
      );

      yield state.copyWith(isDone: true);
    }
  }
}
