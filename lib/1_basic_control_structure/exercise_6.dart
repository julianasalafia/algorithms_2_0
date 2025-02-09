// Write a program that reads an integer and displays its predecessor and successor.

import 'dart:io';

import 'package:algorithms_2_0/commons/extensions/string_extension.dart';

void main() {
  late final int integer;

  stdout.write('Enter a number: ');
  integer = int.parse(stdin.readLineSync()!);

  print('Your Number: $integer'.formatMessage(
    'Predecessor: ${_predecessor(number: integer)}\n'
    'Successor: ${_successor(number: integer)}',
  ));
}

int _predecessor({required int number}) => number - 1;
int _successor({required int number}) => number + 1;
