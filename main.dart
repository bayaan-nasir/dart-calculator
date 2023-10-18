import 'dart:io';

import 'currency.dart';

void main() async {
  bool exit = false;

  while (!exit) {
    stdout.writeln(
      "What do you want to do: \n"
      "1. Basic Arithmetic \n"
      "2. Convert stuff \n"
      "3. Solve equations \n"
      "4. Get time and weather information \n"
      "5. Quit"
    );
    String? option = stdin.readLineSync();

    switch (option) {
      case "1":
        print("Coming Soon!");
      case "2":
        print("Coming Soon!");
      case "3":
        print("Coming Soon!");
      case "4":
        print("Coming Soon!");
      case "5":
        print("Coming Soon!");
      default:
        print("Coming Soon!");
    }
    
  }
}