void main(List<String> args) {
  Worker w1 = Worker("sad", 3, 300);
  w1.IntroSelf();
}

class Person {
  String Name;
  int age;

  Person(this.Name, this.age);
  void IntroSelf() {
    print("name is : $Name and age is : $age ");
  }
}

class Worker extends Person {
  int salary;
  Worker(String name, int age, this.salary) : super(name, age);

  @override
  void IntroSelf() {
    super.IntroSelf();
    print("maaş : $salary");
  }
}
