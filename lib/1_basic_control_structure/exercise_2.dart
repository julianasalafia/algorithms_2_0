// Write a program that reads a person's name and displays a welcome message for them.

import 'dart:io';

import 'package:algorithms_2_0/commons/model/user_model.dart';

void main() {
  UserModel user = UserModel.empty();

  stdout.write('Enter your name: ');
  user = user.copywith(name: stdin.readLineSync()!);

  print('Welcome, ${user.name}!');
}
