import 'package:flutter/material.dart';

import 'package:clean_arch/core/inject/inject.dart';

import 'modules/car/presentation/ui/pages/pages.dart';

void main() {
  Inject.init();
  runApp(const MaterialApp(
    home: CarPage(),
  ));
}
