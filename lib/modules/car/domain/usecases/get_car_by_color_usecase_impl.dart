import 'package:clean_arch/modules/car/domain/entities/car_entity.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

class GetCarByColorUsecaseImpl implements GetCarByColorUsecase {
  final GetCarByColorRepository _getCarByColorRepository;

  GetCarByColorUsecaseImpl(this._getCarByColorRepository);

  @override
  CarEntity call(String color) {
    return _getCarByColorRepository.call(color);
  }
}
