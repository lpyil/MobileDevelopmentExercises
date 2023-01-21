void main(List<String> args) {
  // first soldier second er
  // Er s1 = Er();

  Soldier lp = Soldier("lp", 3);
  Er brs = Er("brs", 2);

  print(lp.age);
  print(brs.from);
  brs.ChangeFrom();
  print(brs.from);
}

class Soldier {
  String name = "";
  int age = 18;
  String from = "adana";
  Soldier(this.name, this.age) {
    print("cons Soldier worked");
  }
}

class Er extends Soldier {
  // super kullanarak yukarıya param gönderme
  Er(String name, int age) : super(name, age) {
    print("er cons worked");
  }

  void ChangeFrom() {
    super.from = "bursa";
  }
}
