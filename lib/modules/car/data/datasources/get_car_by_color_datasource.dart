import 'package:dartz/dartz.dart';

import 'package:clean_arch/modules/car/data/models/models.dart';

abstract class GetCarByColorDatasource {
  Either<Exception, CarModel> call(String color);
}
