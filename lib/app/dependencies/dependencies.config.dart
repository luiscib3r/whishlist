// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:objectbox/objectbox.dart' as _i7;

import '../../projects/bloc/create_project_bloc.dart' as _i3;
import '../../projects/bloc/projects_bloc.dart' as _i8;
import '../../tasks/bloc/create_task_bloc.dart' as _i5;
import '../../tasks/bloc/tasks_bloc.dart' as _i10;
import '../data/repositories/project_repository.dart' as _i6;
import '../data/repositories/repositories.dart' as _i4;
import '../data/repositories/task_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CreateProjectBloc>(
      () => _i3.CreateProjectBloc(get<_i4.ProjectRepository>()));
  gh.factory<_i5.CreateTaskBloc>(
      () => _i5.CreateTaskBloc(get<_i4.TaskRepository>()));
  gh.factory<_i6.ProjectRepository>(
      () => _i6.ProjectRepository(get<_i7.Store>()));
  gh.factory<_i8.ProjectsBloc>(
      () => _i8.ProjectsBloc(get<_i4.ProjectRepository>()));
  gh.factory<_i9.TaskRepository>(() => _i9.TaskRepository(get<_i7.Store>()));
  gh.factory<_i10.TasksBloc>(() => _i10.TasksBloc(get<_i4.TaskRepository>()));
  return get;
}
