import 'dart:io';
import 'dart:math';

main() {
  double temperature;
  String input;
  String choice;
  double output;
  print('hello to temperature program');
  print('if you want to exit at any moment type exit');
  do {
    print('Enter Tempertaure');
    input = stdin.readLineSync();
    temperature = double.parse(input);
    print(
        'choose a - from celsius to fahrinheit \n b - from fahrinheit to celsius \n');
    choice = stdin.readLineSync();
    switch (choice) {
      case 'a':
        output = temperature * (9 / 5) + 32;
        break;
      case 'b':
        output = (temperature - 32) * (5 / 9);
        break;
    }
    print(output);
  } while (input != 'exit');
  print('good bye');
}
