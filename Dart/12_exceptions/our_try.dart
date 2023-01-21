void main(List<String> args) {
  try {
    Student lp = Student(-3);
    print(lp.age);
  } on AgeException catch (e) {
    print(e.message);
    print(e);
  } finally {
    print("\ntry finished");
  }
}

class AgeException implements Exception {
  String message;

  AgeException({this.message = "\nAge Exception"});

  @override
  String toString() {
    return "\nOverried toString method ";
  }
}

class Student {
  int age = 0;

  Student(int age) {
    if (age < 0) {
      throw AgeException(message: "\nAge Exception -- age not be negative");
    } else {
      this.age = age;
    }
  }
}
