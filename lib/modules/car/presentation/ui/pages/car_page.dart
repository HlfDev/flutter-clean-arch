import 'package:flutter/material.dart';

import 'package:clean_arch/modules/car/domain/usecases/usecases.dart';

import 'package:clean_arch/modules/car/data/datasources/datasources.dart';
import 'package:clean_arch/modules/car/data/repositories/repositories.dart';

import 'package:clean_arch/modules/car/presentation/controllers/controllers.dart';
import 'package:get_it/get_it.dart';

class CarPage extends StatefulWidget {
  const CarPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  var carController = GetIt.I.get<CarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(carController.car.licensePlate),
    );
  }
}
