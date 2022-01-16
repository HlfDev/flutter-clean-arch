import 'package:dartz/dartz.dart';

import 'package:clean_arch/modules/car/domain/entities/entities.dart';

abstract class SaveFavoriteCarUsecase {
  Future<Either<Exception, bool>> call(CarEntity carEntity);
}
