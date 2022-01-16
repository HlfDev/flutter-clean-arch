import 'package:clean_arch/modules/car/domain/entities/entities.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

// ignore_for_file: avoid_print

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
    var result = getCarByColorUsecase(color);
    result.fold((l) => print(l.toString()), (r) => car = r);
  }

  Future saveFavoriteCar(CarEntity car) async {
    var result = await saveFavoriteCarUsecase(car);
    result.fold((l) => print(l.toString()), (r) => print(r));
  }
}
