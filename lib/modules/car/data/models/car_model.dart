import 'dart:convert';

import 'package:clean_arch/modules/car/domain/entities/entities.dart';

class CarModel extends CarEntity {
  CarModel({
    required String licensePlate,
    required int doorNumbers,
    required double value,
  }) : super(
          licensePlate: licensePlate,
          doorNumbers: doorNumbers,
          value: value,
        );

  Map<String, dynamic> toMap() {
    return {
      'licensePlate': licensePlate,
      'doorNumbers': doorNumbers,
      'value': value,
    };
  }

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      licensePlate: map['licensePlate'] ?? '',
      doorNumbers: map['doorNumbers']?.toInt() ?? 0,
      value: map['value']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarModel.fromJson(String source) => CarModel.fromMap(json.decode(source));
}
