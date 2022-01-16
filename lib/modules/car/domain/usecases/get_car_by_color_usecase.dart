import 'package:dartz/dartz.dart';

import 'package:clean_arch/modules/car/domain/entities/entities.dart';

abstract class GetCarByColorUsecase {
  Either<Exception, CarEntity> call(String color);
}
