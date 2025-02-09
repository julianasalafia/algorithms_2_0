// Write a program that reads a student's two grades in a subject and displays their average on the screen.

import 'dart:io';

import 'package:algorithms_2_0/model/student_model.dart';

void main() {
  StudentModel student = StudentModel.empty();

  stdout.write('Enter the first grade: ');
  student = student.copyWith(
    firstGrade: double.parse(stdin.readLineSync()!),
  );

  stdout.write('Enter the second grade: ');
  student = student.copyWith(
    secondGrade: double.parse(stdin.readLineSync()!),
  );

  student = student.copyWith(
    averageGrade: _averageGrade(
      firstGrade: student.firstGrade,
      secondGrade: student.secondGrade,
    ),
  );

  print('First grade: ${student.firstGrade}  \nSecond grade: ${student.secondGrade} \nAverage Grade: ${student.averageGrade}');
}

double _averageGrade({
  required double firstGrade,
  required double secondGrade,
}) {
  return (firstGrade + secondGrade) / 2.round();
}
