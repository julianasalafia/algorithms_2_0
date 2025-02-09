class SumModel {
  final int firstNumber;
  final int secondNumber;
  final int total;

  SumModel({
    required this.firstNumber,
    required this.secondNumber,
    required this.total,
  });

  factory SumModel.empty() {
    return SumModel(
      firstNumber: 0,
      secondNumber: 0,
      total: 0,
    );
  }

  copywith({
    int? firstNumber,
    int? secondNumber,
    int? total,
  }) {
    return SumModel(
      firstNumber: firstNumber ?? this.firstNumber,
      secondNumber: secondNumber ?? this.secondNumber,
      total: total ?? this.total,
    );
  }
}
