/* aldığı değere kadar çift sayıların toplamı fonc*/

import 'dart:io';

void main(List<String> args) {
  print("enter a number");

  int evens = int.parse(stdin.readLineSync()!);
  print("Sum of even numbers is ${sumEvens(evens)}");
}

sumEvens(int number) {
  int sum = 0;
  for (var i = 0; i < number; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  return sum;
}
