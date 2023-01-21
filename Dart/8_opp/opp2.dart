void main(List<String> args) {
  /*Car volvo = Car();
  volvo.name = "asa";
  volvo.auto = true;

  volvo.info();

  var a = Car();*/

  Car b = Car(5, true, "sa");
  b.info();

  print(b.auto);
}

class Car {
//cons default
  /* Car() {
    print("const workd");
  }*/
  // cons overloading bağırıyor
  Car(int year, bool auto, String name) {
    print("const2  workd");
    this.year = year;
    this.auto = auto;
    this.name = name;
  }

  int? year;
  bool? auto;
  String? name;

  void info() {
    print("year = ${year}, auto = ${auto}, name = ${name}");
  }
}
