// Develop an algorithm that reads two integers and displays the sum between them.

import 'dart:io';

import 'package:algorithms_2_0/model/sum_model.dart';

void main() {
  SumModel sum = SumModel.empty();

  stdout.write('Enter the first number: ');
  sum = sum.copywith(
    firstNumber: int.parse(stdin.readLineSync()!),
  );

  stdout.write('Enter the second number: ');
  sum = sum.copywith(
    secondNumber: int.parse(stdin.readLineSync()!),
  );

  sum = sum.copywith(
    total: _sum(
      sum.firstNumber,
      sum.secondNumber,
    ),
  );

  print('${sum.firstNumber} + ${sum.secondNumber} = ${sum.total}!');
}

int _sum(int firstNumber, int secondNumber) {
  return firstNumber + secondNumber;
}
