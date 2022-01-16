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
    late bool expectResult;

    // Act
    final result = await saveFavoriteCarRepository(carEntity);
    result.fold((l) => null, (r) => expectResult = r);

    //Assert
    expect(expectResult, isInstanceOf<bool>());
  });
}
