import 'list_others.dart';

void main(List<String> args) {
  Person p1 = Person(3, "p1");
  Student p2 = Student(1, "p2", 3);
  Person p3 = Student(2, "p3", 4);

  var p5 = Person(5, "p4");
  var p4 = Student(7, "p5", 2);

  List<Person> allStudents = [p1, p2, p3, p4, p5];

  allStudents.add(p3);
  allStudents.addAll([p2, p1]);
  print(allStudents);

  bool result = allStudents.any((Person element) => element.id > 4);
  print("\n$result");

  Map<int, Person> test = allStudents.asMap();
  print("\n$test");

  var mapList = allStudents.map((Person e) => "${e.name}").toList();
  print(mapList);

  allStudents.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else {
      return 0;
    }
  });

  print(allStudents);
}
