import 'dart:io';

import 'currency.dart';

void main() {
  stdout.writeln("Enter the code of the currency you have: ");
  String? from = stdin.readLineSync();

  stdout.writeln("Enter the code of the currency you are converting to: ");
  String? to = stdin.readLineSync();

  stdout.writeln("The amount to convert: ");
  String? rawAmount = stdin.readLineSync();
  double amount = double.parse('$rawAmount');

  Future<double> result = convert(amount, from, to);
  print("$amount $from is equivalent to $result $to");
}