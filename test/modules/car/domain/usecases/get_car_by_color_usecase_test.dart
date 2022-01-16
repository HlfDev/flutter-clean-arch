import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/data/datasources/datasources.dart';
import 'package:clean_arch/modules/car/data/repositories/repositories.dart';

import 'package:clean_arch/modules/car/domain/entities/entities.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';
import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

void main() {
  late GetCarByColorUsecase getCarByColorUsecase;
  late GetCarByColorRepository getCarByColorRepository;
  late GetCarByColorDatasource getCarByColorDataSource;

  setUp(() {
    getCarByColorDataSource = GetCarByColorLocalDatasourceImpl();
    getCarByColorRepository = GetCarByColorRepositoryImpl(getCarByColorDataSource);
    getCarByColorUsecase = GetCarByColorUsecaseImpl(getCarByColorRepository);
  });

  test('Should show a CarEntity when GetCarByColorUsecase is called', () {
    // Arrange
    late CarEntity expectResult;

    // Act
    final result = getCarByColorUsecase('Red');
    result.fold((l) => null, (r) => expectResult = r);

    // Assert
    expect(expectResult, isInstanceOf<CarEntity>());
  });

  test('Should show a CarEntity with four doors when color is red', () {
    // Arrange
    const expectValue = 4;
    late CarEntity expectResult;

    // Act
    final result = getCarByColorUsecase('Red');
    result.fold((l) => null, (r) => expectResult = r);

    // Assert
    expect(expectResult.doorNumbers, expectValue);
  });

  test('Should show a CarEntity with two doors when color is different than red', () {
    // Arrange
    const expectValue = 2;
    late CarEntity expectResult;

    // Act
    final result = getCarByColorUsecase('Blue');
    result.fold((l) => null, (r) => expectResult = r);

    // Assert
    expect(expectResult.doorNumbers, expectValue);
  });
}
