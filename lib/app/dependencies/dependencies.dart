import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/objectbox.g.dart';
import 'package:whishlist/app/dependencies/dependencies.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> setupDependencies(String env) async {
  final gh = $initGetIt(
    getIt,
    environment: env,
  );

  final _store = await openStore();

  gh.registerSingleton<Store>(_store);
}
