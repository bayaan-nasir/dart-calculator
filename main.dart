import 'dart:io';
import 'currency.dart';

void clear() {
  print("\x1B[2J\x1B[0;0H");
}

void pause() {
  print("Press any key to continue...");
  stdin.readLineSync();
}

void main() async {
  bool exit = false;

  while (!exit) {
    clear();
    stdout.writeln("What do you want to do: \n"
        "1. Basic Arithmetic \n"
        "2. Convert stuff \n"
        "3. Solve equations \n"
        "4. Get time and weather information \n"
        "0. Quit");
    String? option = stdin.readLineSync();

    switch (option) {
      case "1":
        print("Coming Soon!");
      case "2":
        clear();
        stdout.writeln("What do you want to convert: \n"
            "1. Length \n"
            "2. Weight \n"
            "3. Currency \n"
            "0. Back");
        option = stdin.readLineSync();

        switch (option) {
          case '1':
            print("Coming Soon!");

          case '2':
            print("Coming Soon!");

          case '3':
            clear();
            stdout.writeln("Enter the code of the currency you have: ");
            String? from = stdin.readLineSync();

            stdout.writeln(
              "Enter the code of the currency you are converting to: ");
            String? to = stdin.readLineSync();

            stdout.writeln("The amount to convert: ");
            String? rawAmount = stdin.readLineSync();
            double amount = double.parse('$rawAmount');

            double result = await convert(amount, from?.toUpperCase(), to?.toUpperCase());
            String res = result.toStringAsFixed(2);
            result != double.infinity
              ? print("$amount $from is equivalent to $res $to")
              : print("The currency codes are not valid");
            pause();

          case '0':
            break;

          default:
            print("Enter a valid option.");
            pause();
        }
      case "3":
        print("Coming Soon!");
      case "4":
        print("Coming Soon!");
      case "0":
        exit = true;
      default:
        print("Enter a valid option.");
    }
  }
}
