void main(List<String> args) {
  Geometric s1 = Square(4);
  print(s1.areaCal());
}

// en az 1 tane bodysiz olmalı

//Geometric s1 = Geometric();
// abstract tan nesne üretilmez

abstract class Geometric {
  double volumeCal();

  double areaCal();
}

class Square extends Geometric {
  int border;
  Square(this.border);

  @override
  double areaCal() {
    return border * 4.00;
  }

  @override
  double volumeCal() {
    return border * border.toDouble();
  }
}

class Rectangle extends Geometric {
  int border1;
  int border2;

  Rectangle(this.border1, this.border2);

  @override
  double areaCal() {
    return border1 * border2 * 2.00;
  }

  @override
  double volumeCal() {
    return border1 * border2.toDouble();
  }
}
