import 'dart:io';

void main() {
  stdout.writeln("Enter your first name: ");
  String? name = stdin.readLineSync();
  print("Hello $name");

  print(sum(2, 5));
}

int sum(int f, int l) {
  int sum = f + l;
  return sum;
}