import 'package:clean_arch/modules/car/domain/entities/entities.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

class CarController {
  final GetCarByColorUsecase getCarByColorUsecase;
  final SaveFavoriteCarUsecase saveFavoriteCarUsecase;

  late CarEntity car;

  CarController({
    required this.getCarByColorUsecase,
    required this.saveFavoriteCarUsecase,
  }) {
    getCarByColor('Red');
  }

  void getCarByColor(String color) {
    car = getCarByColorUsecase(color);
  }

  Future<bool> saveFavoriteCar(CarEntity car) async {
    return await saveFavoriteCarUsecase(car);
  }
}
