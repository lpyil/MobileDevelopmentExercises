import 'dart:math';

import 'student.dart';

void main(List<String> args) {
  List<Student> AllStudents = List.filled(100, Student());

  StudentFill(AllStudents);
  for (var st in AllStudents) {
    print(st);
  }
  print("average is " + average(AllStudents).toString());
}

void StudentFill(List<Student> list) {
  for (var i = 0; i < list.length; i++) {
    list[i] = Student(ID: Random().nextInt(500), grade: Random().nextInt(100));
  }
}

double average(List<Student> list) {
  int sum = 0;
  for (Student st in list) {
    sum += st.grade;
  }
  return sum / list.length;
}
