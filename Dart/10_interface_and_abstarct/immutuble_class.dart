void main(List<String> args) {
  const Student lp = Student(5, "lp");
  const Student lp2 = Student(5, "lp");

  if (lp == lp2) {
    print("eşit ");
  } else {
    print("eşit değil");
  }
}
/*
class Student {

  // eşit değil verir 
  
  final int id;
  final String name;

  Student(this.id, this.name);
}
*/

class Student {
  final int id;
  final String name;

  const Student(this.id, this.name);
}
