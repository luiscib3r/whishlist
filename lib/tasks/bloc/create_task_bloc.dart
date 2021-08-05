import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/data/models/models.dart';
import 'package:whishlist/app/data/repositories/repositories.dart';
import 'package:whishlist/app/data/services/notification_service.dart';

part 'create_task_event.dart';
part 'create_task_state.dart';
part 'create_task_bloc.freezed.dart';

@injectable
class CreateTaskBloc extends Bloc<CreateTaskEvent, CreateTaskState> {
  CreateTaskBloc(
    this._repository,
    this._projectRepository,
    this._notificationRepository,
    this._notificationService,
  ) : super(CreateTaskState.initial());

  final TaskRepository _repository;
  final ProjectRepository _projectRepository;
  final NotificationRepository _notificationRepository;
  final NotificationService _notificationService;

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
        loadProjects: _loadProjects,
        projectChanged: _projectChanged);
  }

  Stream<CreateTaskState> _nameChanged(String value) async* {
    final valid = value.isNotEmpty && state.description.isNotEmpty;

    yield state.copyWith(
      title: value,
      isValid: valid && state.project != null,
    );
  }

  Stream<CreateTaskState> _descriptionChanged(String value) async* {
    final valid = value.isNotEmpty && state.title.isNotEmpty;

    yield state.copyWith(
      description: value,
      isValid: valid && state.project != null,
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
      final task = Task(
        title: state.title,
        description: state.description,
        author: faker.person.name(),
        dueDate: state.dueDate,
        resolver: state.resolver,
        type: state.type,
        state: TaskState.nueva,
      );

      task.project.target = state.project;

      _repository.put(task);

      final notification = Notification(
        title: task.title,
        message: '${task.author} was created a task',
      );

      _notificationRepository.put(notification);

      _notificationService.show(notification);

      yield state.copyWith(isDone: true);
    }
  }

  Stream<CreateTaskState> _loadProjects() async* {
    final projects = _projectRepository.getAll();

    yield state.copyWith(
      projects: projects,
    );
  }

  Stream<CreateTaskState> _projectChanged(Project project) async* {
    final valid = state.title.isNotEmpty && state.description.isNotEmpty;

    yield state.copyWith(
      project: project,
      isValid: valid,
    );
  }
}
