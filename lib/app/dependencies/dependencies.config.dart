// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:objectbox/objectbox.dart' as _i6;

import '../../projects/bloc/create_project_bloc.dart' as _i3;
import '../../projects/bloc/projects_bloc.dart' as _i7;
import '../data/repositories/project_repository.dart' as _i5;
import '../data/repositories/repositories.dart' as _i4;
import '../data/repositories/task_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CreateProjectBloc>(
      () => _i3.CreateProjectBloc(get<_i4.ProjectRepository>()));
  gh.factory<_i5.ProjectRepository>(
      () => _i5.ProjectRepository(get<_i6.Store>()));
  gh.factory<_i7.ProjectsBloc>(
      () => _i7.ProjectsBloc(get<_i4.ProjectRepository>()));
  gh.factory<_i8.TaskRepository>(() => _i8.TaskRepository(get<_i6.Store>()));
  return get;
}
