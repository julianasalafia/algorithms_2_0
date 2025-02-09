class StudentModel {
  final double firstGrade;
  final double secondGrade;
  final double averageGrade;

  StudentModel({
    required this.firstGrade,
    required this.secondGrade,
    required this.averageGrade,
  });

  factory StudentModel.empty() {
    return StudentModel(
      firstGrade: 0,
      secondGrade: 0,
      averageGrade: 0,
    );
  }

  copyWith({
    double? firstGrade,
    double? secondGrade,
    double? averageGrade,
  }) {
    return StudentModel(
      firstGrade: firstGrade ?? this.firstGrade,
      secondGrade: secondGrade ?? this.secondGrade,
      averageGrade: averageGrade ?? this.averageGrade,
    );
  }
}
