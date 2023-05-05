import 'dart:io';

// factorial

void main(List<String> args) {
  int number = int.parse(stdin.readLineSync()!);
  print(factorial(number));
}

int factorial(int a) {
  int fact = 1;

  while (a > 1) {
    fact = fact * a;
    a--;
  }

  return fact;
}
