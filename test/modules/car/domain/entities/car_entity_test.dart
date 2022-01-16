import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/domain/entities/entities.dart';

void main() {
  test('Should show a CarEntity with four door numbers', () {
    // Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 4, value: 40000);
    const expectValue = 4;

    // Assert
    expect(carEntity.doorNumbers, expectValue);
  });

  test('Should show a CarEntity with total value equals 0 when car have zero doors ', () {
    // Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 0, value: 40000);
    const expectValue = 0;

    // Assert
    expect(carEntity.totalValue, expectValue);
  });

  test(
      'Should show a CarEntity with total value equals 40000 when car have four doors and car value is 10000',
      () {
    // Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 4, value: 10000);
    const expectValue = 40000;

    // Assert
    expect(carEntity.totalValue, expectValue);
  });

  test(
      'Should show a CarEntity with total value equals 20000 when car have two doors and car value is 10000',
      () {
    //Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 2, value: 10000);
    const expectValue = 20000;

    // Assert
    expect(carEntity.totalValue, expectValue);
  });

  test('Should show a CarEntity with value multiplied by two when value is more than 40000 ', () {
    // Arrange
    final carEntity = CarEntity(licensePlate: 'ABC100', doorNumbers: 4, value: 41000);
    final expectValue = carEntity.value * 2;

    // Act
    carEntity.taxArringFromValue();

    // Assert
    expect(carEntity.value, expectValue);
  });
}
