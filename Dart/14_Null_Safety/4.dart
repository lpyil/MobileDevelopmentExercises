
// can be used required int a, required int b --> must be give

// int? can be used but if we are sum of all varb --> boom
int sum3numbers({int a = 0, int b = 0, int c = 0}) {
  return a + b + c;
}

void main(List<String> args) {
  final s1 = sum3numbers(a: 2, b: 3);
  final s2 = sum3numbers(a: 1, b: 2, c: 3);
  print("s1 : $s1, s2 : $s2");
}
