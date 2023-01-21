
void main(List<String> args) {
  double doubleAverage = findAverage<double>(5.2, 2);
  print(doubleAverage);

  double intAverage = findAverage<int>(7, 4);
  print(intAverage);
}

double findAverage<T extends num>(T n1, T n2) {
  return (n1 + n2) / 2;
}
