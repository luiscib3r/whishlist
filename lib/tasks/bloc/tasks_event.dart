part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.started() = _Started;
  const factory TasksEvent.delete(int id) = _Delete;
  const factory TasksEvent.update(Task task) = _Update;
}