void main(List<String> args) {
  sumNumbers();
  print(minusNumbers(3, 1));
  print(findMax(4, 6));
}

sumNumbers() {
  int a = 3, b = 4;

  print("${a + b}");
}

int minusNumbers(int a, int b) => a - b;
// Fat arrow

int findMax(int a, int b) => a > b ? a : b;
// if and fat arrow
