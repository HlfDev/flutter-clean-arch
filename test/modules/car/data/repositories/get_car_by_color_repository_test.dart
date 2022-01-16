import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/domain/entities/car_entity.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';

import 'package:clean_arch/modules/car/data/repositories/repositories.dart';
import 'package:clean_arch/modules/car/data/datasources/datasources.dart';

void main() {
  late GetCarByColorRepository getCarByColorRepository;
  late GetCarByColorDatasource getCarByColorDataSource;

  setUp(() {
    getCarByColorDataSource = GetCarByColorLocalDatasourceImpl();
    getCarByColorRepository = GetCarByColorRepositoryImpl(getCarByColorDataSource);
  });

  test('Should show a CarEntity when GetCarByColorRepository is called', () {
    // Arrange
    late CarEntity expectResult;

    // Act
    final result = getCarByColorRepository('Red');
    result.fold((l) => null, (r) => expectResult = r);

    // Assert
    expect(expectResult, isNotNull);
    expect(expectResult, isInstanceOf<CarEntity>());
  });
}
