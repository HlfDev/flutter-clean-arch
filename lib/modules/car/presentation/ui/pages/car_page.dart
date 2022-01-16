import 'package:get_it/get_it.dart';

import 'package:flutter/material.dart';

import 'package:clean_arch/modules/car/presentation/controllers/controllers.dart';

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
