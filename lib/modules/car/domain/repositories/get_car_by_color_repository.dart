import 'package:clean_arch/modules/car/domain/entities/entities.dart';

abstract class GetCarByColorRepository {
  CarEntity call(String color);
}
