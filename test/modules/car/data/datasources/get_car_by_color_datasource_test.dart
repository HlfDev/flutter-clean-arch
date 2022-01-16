import 'package:flutter_test/flutter_test.dart';

import 'package:clean_arch/modules/car/data/models/models.dart';
import 'package:clean_arch/modules/car/data/datasources/datasources.dart';

void main() {
  late GetCarByColorDatasource getCarByColorDataSource;

  setUp(() {
    getCarByColorDataSource = GetCarByColorLocalDatasourceImpl();
  });

  test('Should show a CarModel when GetCarByColorDatasource is called', () {
    final result = getCarByColorDataSource('red');

    expect(result, isInstanceOf<CarModel>());
  });
}
