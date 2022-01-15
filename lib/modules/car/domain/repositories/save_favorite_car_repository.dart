import 'package:clean_arch/modules/car/domain/entities/entities.dart';

abstract class SaveFavoriteCarRepository {
  Future<bool> call(CarEntity carEntity);
}
