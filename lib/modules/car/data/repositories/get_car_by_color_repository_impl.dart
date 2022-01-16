import 'package:dartz/dartz.dart';

import 'package:clean_arch/modules/car/data/datasources/datasources.dart';

import 'package:clean_arch/modules/car/domain/entities/entities.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';

class GetCarByColorRepositoryImpl implements GetCarByColorRepository {
  final GetCarByColorDatasource _getCarByColorDatasource;

  GetCarByColorRepositoryImpl(this._getCarByColorDatasource);

  @override
  Either<Exception, CarEntity> call(String color) {
    return _getCarByColorDatasource.call(color);
  }
}
