import 'package:clean_arch/modules/car/data/models/models.dart';
import 'package:clean_arch/modules/car/domain/entities/entities.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';

class GetCarByColorRepositoryImpl implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    var map = {
      'licensePlate': 'ABC100',
      'doorNumbers': 4,
      'value': 40000,
    };

    if (color.toUpperCase() != 'RED') {
      map = {
        'licensePlate': 'ABC200',
        'doorNumbers': 2,
        'value': 20000,
      };
    }

    return CarModel.fromMap(map);
  }
}
