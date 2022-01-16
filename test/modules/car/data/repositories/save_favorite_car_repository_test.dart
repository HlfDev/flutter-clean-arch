import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';
import 'package:clean_arch/modules/car/domain/entities/entities.dart';

import 'package:clean_arch/modules/car/data/repositories/repositories.dart';

void main() {
  late SaveFavoriteCarRepository saveFavoriteCarRepository;

  setUp(() {
    saveFavoriteCarRepository = SaveFavoriteCarRepositoryImpl();
  });

  test('Show show a boolean when saveFavoriteCarRepository is called', () async {
    // Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 0, value: 40000);

    // Act
    final result = await saveFavoriteCarRepository(carEntity);

    //Assert
    expect(result, isInstanceOf<bool>());
  });
}
