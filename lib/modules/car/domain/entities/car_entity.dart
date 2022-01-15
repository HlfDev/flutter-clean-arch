class CarEntity {
  String licensePlate;
  int doorNumbers;
  double value;
  CarEntity({
    required this.licensePlate,
    required this.doorNumbers,
    required this.value,
  });

  CarEntity copyWith({
    String? licensePlate,
    int? doorNumbers,
    double? value,
  }) {
    return CarEntity(
      licensePlate: licensePlate ?? this.licensePlate,
      doorNumbers: doorNumbers ?? this.doorNumbers,
      value: value ?? this.value,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarEntity &&
        other.licensePlate == licensePlate &&
        other.doorNumbers == doorNumbers &&
        other.value == value;
  }

  @override
  int get hashCode => licensePlate.hashCode ^ doorNumbers.hashCode ^ value.hashCode;

  @override
  String toString() =>
      'CarEntity(licensePlate: $licensePlate, doorNumbers: $doorNumbers, value: $value)';
}
