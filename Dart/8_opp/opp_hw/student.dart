class Student {
  int ID;
  int grade;

  Student({this.ID = 0, this.grade = 0});

  @override
  String toString() {
    return " \n ID : ${ID} and grade : ${grade} ";
  }
}
