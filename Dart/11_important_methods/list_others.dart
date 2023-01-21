void main(List<String> args) {
  Person p1 = Person(3, "p1");
  Student p2 = Student(1, "p2", 3);
  Person p3 = Student(2, "p3", 4);

  var p5 = Person(5, "p4");
  var p4 = Student(7, "p5", 2);

  List<Person> allS = [p1, p2, p3, p4, p5];

  var list1 = List<Student>.filled(5, Student(0, "", 0));
  print("$list1 \n");

  // all elemnt
  // comp time
  var listeFrom = List<Student>.from(allS.whereType<Student>());
  // a list from
  var listeOf = List<Student>.of(allS.whereType<Student>());

  // index karşılaştırması doğeu ama tüm liste karşılaştırması değil
  //lambda
  var listGen =
      List<Student>.generate(5, (index) => Student(index, "$index", index * 2));
  print("$listGen  \n");

  var cantChange = List.unmodifiable([3, 5, 7]);
  // cantChange.add(4);
  print("$cantChange  \n");

  if (listeFrom[0] == listeOf[0]) {
    print("same\n");
  } else {
    print("not same \n");
  }
}

class Person {
  int id = 0;
  String name = "";

  Person(this.id, this.name);
  @override
  String toString() {
    return "id : $id , name : $name  \n";
  }
}

class Student extends Person {
  int courses = 0;

  Student(id, name, this.courses) : super(id, name);

  @override
  String toString() {
    return "id : $id , name : $name, Count of courses : $courses  \n";
  }
}
