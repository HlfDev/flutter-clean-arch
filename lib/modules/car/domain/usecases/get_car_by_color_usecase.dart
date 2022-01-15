import 'package:clean_arch/modules/car/domain/entities/entities.dart';

abstract class GetCarByColorUsecase {
  CarEntity call(String color);
}
