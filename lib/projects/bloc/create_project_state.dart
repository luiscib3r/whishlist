part of 'create_project_bloc.dart';

@freezed
class CreateProjectState with _$CreateProjectState {
  const factory CreateProjectState({
    required String name,
    required String description,
    required bool isValid,
    required bool isDone,
  }) = _CreateProjectState;

  factory CreateProjectState.initial() => const CreateProjectState(
        name: '',
        description: '',
        isValid: false,
        isDone: false,
      );
}
