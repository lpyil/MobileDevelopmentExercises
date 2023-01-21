void main(List<String> args) {
  Car a = Car();
  Car b = Car.AllParams(1, " s", true);
  Car c = Car.WithoutYear("sad", false);

  a.info();
  b.info();
  c.info();
}

class Car {
  // default cons
  Car() {
    print("default cons worked \n");
  }

  Car.AllParams(this.year, this.name, this.auto) {
    print("all param cons worked \n");
  }

  Car.WithoutYear(this.name, this.auto) {
    print("without year cons worked \n");
  }

  void info() {
    print("year = ${this.year}, auto = ${this.auto}, name = ${this.name} \n");
  }

  int? year;
  bool? auto;
  String? name;
}
