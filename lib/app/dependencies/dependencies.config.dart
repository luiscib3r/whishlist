// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:objectbox/objectbox.dart' as _i4;

import '../../projects/bloc/projects_bloc.dart' as _i5;
import '../data/repositories/project_repository.dart' as _i3;
import '../data/repositories/repositories.dart' as _i6;
import '../data/repositories/task_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ProjectRepository>(
      () => _i3.ProjectRepository(get<_i4.Store>()));
  gh.factory<_i5.ProjectsBloc>(
      () => _i5.ProjectsBloc(get<_i6.ProjectRepository>()));
  gh.factory<_i7.TaskRepository>(() => _i7.TaskRepository(get<_i4.Store>()));
  return get;
}
