void main(List<String> args) {
  Student alp = Student();
  var ax = Student();

  alp.active = true;
  ax.name = "sad";
}

class Student {
  // instance
  int? no;
  String? name;
  bool? active;

  void work() {
    print("working ");
  }
}
