void main(List<String> args) {
  int sum1 = sumNumbers(5, 4);
  int sum2 = sumNumbers(5);
  print("sum1 ${sum1}");
  print("sum2 ${sum2}");

// we can use different order
  int sum3 = sumNumbers2(num2: 5, num1: 1);
  print("sum3 ${sum3}");

// num1 must be given, 2 is num1
  int sum4 = sumNumbers3(num2: 5, 2);
  print("sum4 ${sum4}");

  int Vol = calcVolume(height: 5, widht: 3);
  print("vol ${Vol}");
}

// these params are optional
// we assign 0 if  don't use
sumNumbers(int num1, [int num2 = 0, int num3 = 0]) {
  return num1 + num2 + num3;
}

sumNumbers2({int num1 = 0, int num2 = 0, int num3 = 0}) {
  return num1 + num2 + num3;
}

sumNumbers3(int num1, {int num2 = 0, int num3 = 0}) {
  return num1 + num2 + num3;
}

int calcVolume({int widht = 1, int height = 1, int depth = 1}) {
  return widht * height * depth;
}
