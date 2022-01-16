import 'package:clean_arch/modules/car/data/datasources/datasources.dart';
import 'package:clean_arch/modules/car/data/models/car_model.dart';

class GetCarByColorLocalDatasourceImpl implements GetCarByColorDatasource {
  @override
  CarModel call(String color) {
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

    if (color.toUpperCase() == 'RED') {
      return CarModel.fromMap(mapRed);
    } else {
      return CarModel.fromMap(mapAny);
    }
  }
}
