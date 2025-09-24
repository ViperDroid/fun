import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  String? num1Str = stdin.readLineSync();
  double? num1 = double.tryParse(num1Str ?? '');

  stdout.write('Enter an operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  stdout.write('Enter the second number: ');
  String? num2Str = stdin.readLineSync();
  double? num2 = double.tryParse(num2Str ?? '');

  if (num1 == null || num2 == null || operator == null || operator.length != 1) {
    print('Error: Invalid input.');
    return;
  }

  double? result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print('Error: Cannot divide by zero.');
        return;
      }
      result = num1 / num2;
      break;
    default:
      print('Error: Invalid operator.');
      return;
  }

  print('Result: $result');
}
