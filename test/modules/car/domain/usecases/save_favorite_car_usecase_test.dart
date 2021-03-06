import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/data/repositories/repositories.dart';

import 'package:clean_arch/modules/car/domain/entities/car_entity.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

void main() {
  late SaveFavoriteCarUsecase saveFavoriteCarUsecase;
  late SaveFavoriteCarRepository saveFavoriteCarRepository;

  setUp(() {
    saveFavoriteCarRepository = SaveFavoriteCarRepositoryImpl();
    saveFavoriteCarUsecase = SaveFavoriteCarUsecaseImpl(saveFavoriteCarRepository);
  });

  test('Should save CarEntity when car value is more than zero ', () async {
    // Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 0, value: 40000);
    late bool expectResult;

    // Act
    final result = await saveFavoriteCarUsecase(carEntity);
    result.fold((l) => null, (r) => expectResult = r);

    // Assert
    expect(expectResult, true);
  });

  test('Should don\'t save CarEntity when car value is than zero or less', () async {
    // Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 0, value: 0);
    late bool expectResult;

    // Act
    final result = await saveFavoriteCarUsecase(carEntity);
    result.fold((l) => null, (r) => expectResult = r);

    // Assert
    expect(expectResult, false);
  });
}
