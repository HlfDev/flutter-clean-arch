import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/domain/entities/car_entity.dart';
import 'package:clean_arch/modules/car/domain/repositories/repositories.dart';

import 'package:clean_arch/modules/car/data/repositories/repositories.dart';

void main() {
  late GetCarByColorRepository getCarByColorRepository;

  setUp(() {
    getCarByColorRepository = GetCarByColorRepositoryImpl();
  });

  test('Should show a CarEntity when GetCarByColorRepository is called', () {
    // Act
    final result = getCarByColorRepository('Red');

    // Assert
    expect(result, isNotNull);
    expect(result, isInstanceOf<CarEntity>());
  });
}
