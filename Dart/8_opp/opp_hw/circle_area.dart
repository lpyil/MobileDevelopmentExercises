class Circle {
  int _radius = 1;
  double _PI = 3.14;

  Circle(int radius) {
    radiusCheck = radius;
  }

  void set radiusCheck(int number) {
    if (number > 0) {
      _radius = number;
    } else {
      _radius = 1;
    }
  }

  double cevre() {
    return _PI * 2 * _radius;
  }

  double area() {
    return _PI * _radius * _radius;
  }
}
