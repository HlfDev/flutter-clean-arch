import 'package:clean_arch/modules/car/data/models/models.dart';

abstract class GetCarByColorDatasource {
  CarModel call(String color);
}
