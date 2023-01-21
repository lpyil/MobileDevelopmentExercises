void main(List<String> args) {
  Maths m1 = Maths(50, 30);
  m1.sum();

  // nesne üretmeye ihtiyaç yok direk erişebiliyoruz

  // bunlara nesneden erişemeyiz
  print(Maths.PI);
  Maths.className();
}

class Maths {
  // instance variable
  int num1 = 0;
  int num2 = 0;

  // class variable
  static double PI = 3.14;
  // bunlar nesnelerden bağımsız çalışır classa bağlı
  static int count = 0;

  static className() {
    print("\nMaths sinifindanim");
  }

  Maths(this.num1, this.num2);

  void sum() {
    // static fonks a erişebilir
    className();
    count++;
    print("\nthe sum is ${num1 + num2}");
  }

  void sub() {
    count++;
    print("\na-b is ${num1 - num2}");
  }
}
