part of 'create_project_bloc.dart';

@freezed
class CreateProjectEvent with _$CreateProjectEvent {
  const factory CreateProjectEvent.nameChanged(String value) = _NameChanged;

  const factory CreateProjectEvent.descriptionChanged(String value) =
      _DescriptionChanged;

  const factory CreateProjectEvent.submit() = _Submit;
}
