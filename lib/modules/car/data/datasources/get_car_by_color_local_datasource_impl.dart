import 'package:dartz/dartz.dart';

import 'package:clean_arch/modules/car/data/datasources/datasources.dart';
import 'package:clean_arch/modules/car/data/models/car_model.dart';

class GetCarByColorLocalDatasourceImpl implements GetCarByColorDatasource {
  @override
  Either<Exception, CarModel> call(String color) {
    var mapRed = {
      'licensePlate': 'ABC100',
      'doorNumbers': 4,
      'value': 40000,
    };

    var mapAny = {
      'licensePlate': 'ABC200',
      'doorNumbers': 2,
      'value': 20000,
    };

    try {
      if (color.toUpperCase() == 'RED') {
        return Right(CarModel.fromMap(mapRed));
      } else {
        return Right(CarModel.fromMap(mapAny));
      }
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
