part of 'create_task_bloc.dart';

@freezed
class CreateTaskState with _$CreateTaskState {
  const factory CreateTaskState({
    required String title,
    required String description,
    required int type,
    required String resolver,
    required DateTime dueDate,
    required bool isValid,
    required bool isDone,
  }) = _CreateTaskState;

  factory CreateTaskState.initial() => CreateTaskState(
        title: '',
        description: '',
        isValid: false,
        isDone: false,
        type: 0,
        resolver: '',
        dueDate: DateTime.now(),
      );
}
