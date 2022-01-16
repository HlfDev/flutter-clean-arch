import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';
import 'package:clean_arch/modules/car/domain/entities/car_entity.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

class SaveFavoriteCarUsecaseImpl implements SaveFavoriteCarUsecase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUsecaseImpl(this._saveFavoriteCarRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    carEntity.taxArringFromValue();
    return await _saveFavoriteCarRepository.call(carEntity);
  }
}
