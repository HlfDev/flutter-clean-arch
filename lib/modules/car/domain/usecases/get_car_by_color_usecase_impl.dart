import 'package:clean_arch/modules/car/domain/entities/car_entity.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

class GetCarByColorUsecaseImlp implements GetCarByColorUsecase {
  @override
  CarEntity call(String color) {
    if (color.toUpperCase() == 'VERMELHO') {
      return CarEntity(licensePlate: 'ABC100', doorNumbers: 4, value: 40000);
    }
    return CarEntity(licensePlate: 'ABC200', doorNumbers: 2, value: 20000);
  }
}
