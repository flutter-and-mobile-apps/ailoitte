import 'package:ailoitte/data/Favorites/repository.dart';
import 'package:ailoitte/data/Products/repository.dart';
import 'package:ailoitte/data/core/DioManager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpDep()async {
  getIt.registerLazySingleton(() => DioManager());
  getIt.registerLazySingleton(() => ProductsRepository(dio: getIt<DioManager>()));
  getIt.registerLazySingleton(() => FavoriteRepository());
}