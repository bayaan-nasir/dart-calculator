import 'dart:io';

void main() {
  stdout.writeln("Enter your first name: ");
  String? name = stdin.readLineSync();
  print(" Hello $name");
}