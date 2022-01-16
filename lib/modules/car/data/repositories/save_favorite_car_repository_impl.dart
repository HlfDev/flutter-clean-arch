import 'package:clean_arch/modules/car/domain/entities/entities.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';

class SaveFavoriteCarRepositoryImpl implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.value > 0;
  }
}
