import 'dart:io';

import 'currency.dart';

void main() async {
  stdout.writeln("Enter the code of the currency you have: ");
  String? from = stdin.readLineSync();

  stdout.writeln("Enter the code of the currency you are converting to: ");
  String? to = stdin.readLineSync();

  stdout.writeln("The amount to convert: ");
  String? rawAmount = stdin.readLineSync();
  double amount = double.parse('$rawAmount');

  double result = await convert(amount, from, to);
  result != double.infinity ? 
    print("$amount $from is equivalent to $result $to")
  : print("The currency codes are not valid");
}