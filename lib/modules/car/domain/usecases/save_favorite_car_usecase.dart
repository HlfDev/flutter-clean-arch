import 'package:clean_arch/modules/car/domain/entities/entities.dart';

abstract class SaveFavoriteCarUsecase {
  Future<bool> call(CarEntity carEntity);
}
