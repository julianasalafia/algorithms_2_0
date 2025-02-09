// Create a program that reads an employee's name and salary and displays a message at the end.

import 'dart:io';

import 'package:algorithms_2_0/model/user_model.dart';

void main() {
  UserModel user = UserModel.empty();

  stdout.write('Enter your name: ');
  user = user.copywith(name: stdin.readLineSync()!);

  stdout.write('Enter your wage: ');
  user = user.copywith(wage: double.parse(stdin.readLineSync()!));

  print('Welcome, ${user.name}! Your wage is \$${user.wage!.toStringAsFixed(2)}!');
}
