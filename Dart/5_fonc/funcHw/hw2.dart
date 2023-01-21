// daire alanı fonks pi  opsiyonel


void main(List<String> args) {
  print("enter a radius");
  double radius = 2;
  print(circleArea(radius));

  // optional
  print(circleArea(radius, 3));
  // second
  print(circleArea2(3, pi: 4));
}

double circleArea(double radius, [double pi = 3.14]) {
  return radius * radius * pi;
}

double circleArea2(double radius, {pi = 3}) {
  return radius * radius * pi;
}
