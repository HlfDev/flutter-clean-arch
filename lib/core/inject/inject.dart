import 'package:get_it/get_it.dart';

import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

import 'package:clean_arch/modules/car/data/datasources/datasources.dart';
import 'package:clean_arch/modules/car/data/repositories/repositories.dart';

import 'package:clean_arch/modules/car/presentation/controllers/controllers.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // Datasources
    getIt.registerLazySingleton<GetCarByColorDatasource>(
      () => GetCarByColorLocalDatasourceImpl(),
    );

    // Repositories
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(
      () => SaveFavoriteCarRepositoryImpl(),
    );
    getIt.registerLazySingleton<GetCarByColorRepository>(
      () => GetCarByColorRepositoryImpl(
        getIt(),
      ),
    );

    // Usecases
    getIt.registerLazySingleton<GetCarByColorUsecase>(
      () => GetCarByColorUsecaseImpl(
        getIt(),
      ),
    );
    getIt.registerLazySingleton<SaveFavoriteCarUsecase>(
      () => SaveFavoriteCarUsecaseImpl(
        getIt(),
      ),
    );

    // Controllers
    getIt.registerFactory<CarController>(
      () => CarController(
        getCarByColorUsecase: getIt(),
        saveFavoriteCarUsecase: getIt(),
      ),
    );
  }
}
