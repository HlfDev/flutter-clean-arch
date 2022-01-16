import 'package:dartz/dartz.dart';

import 'package:clean_arch/modules/car/domain/entities/entities.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';

class SaveFavoriteCarRepositoryImpl implements SaveFavoriteCarRepository {
  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    try {
      return Right(carEntity.value > 0);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
