part of 'create_task_bloc.dart';

@freezed
class CreateTaskEvent with _$CreateTaskEvent {
  const factory CreateTaskEvent.titleChanged(String value) = _TitleChanged;

  const factory CreateTaskEvent.descriptionChanged(String value) =
      _DescriptionChanged;

  const factory CreateTaskEvent.typeChanged(String value) = _TypeChanged;

  const factory CreateTaskEvent.resolverChanged(String value) =
      _ResolverChanged;

  const factory CreateTaskEvent.dueDateChanged(DateTime value) =
      _DueDateChanged;

  const factory CreateTaskEvent.submit() = _Submit;
}
