void main(List<String> args) {
  sumNumbers();
  int diff = minusNumbers(5, 3);
  print(diff);
  print(sayiCikar(5, 3));
}

void sumNumbers() {
  int num1 = 10, num2 = 5;
  print("toplam : ${num1 + num2}");
}

int minusNumbers(int n1, int n2) {
  return (n1 - n2);
}

int sayiCikar(int s1, int s2) => (s1 - s2);
