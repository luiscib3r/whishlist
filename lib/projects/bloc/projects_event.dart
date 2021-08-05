part of 'projects_bloc.dart';

@freezed
class ProjectsEvent with _$ProjectsEvent {
  const factory ProjectsEvent.started() = _Started;
  const factory ProjectsEvent.delete(int id) = _Delete;
}