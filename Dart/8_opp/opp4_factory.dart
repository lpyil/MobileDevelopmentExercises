void main(List<String> args) {
  Student lp = Student(25, "lp");
  Student denis = Student.factoryed(-3, "denis");

  print(lp.name);
  print(denis.id);
  print(denis.name);
}

class Student {
  int id = 1;
  String name = "";

  //return yok
  Student(this.id, this.name);

  factory Student.factoryed(int id, String name) {
    if (id < 0) {
      return Student(5, name);
    } else {
      return Student(id, name);
    }
  }
}
