import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/data/models/models.dart';
import 'package:clean_arch/modules/car/data/datasources/datasources.dart';

void main() {
  late GetCarByColorDatasource getCarByColorDataSource;

  setUp(() {
    getCarByColorDataSource = GetCarByColorLocalDatasourceImpl();
  });

  test('Should show a CarModel when GetCarByColorDatasource is called', () {
    // Arrange
    late CarModel expectResult;

    // Act
    final result = getCarByColorDataSource('red');
    result.fold((l) => null, (r) => expectResult = r);

    // Assert
    expect(expectResult, isInstanceOf<CarModel>());
  });
}
