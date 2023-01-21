void main(List<String> args) {}


//farklı özellikleri kalıtım gibi kullanma 
class Animal {}

abstract class canFly {
  void fly();
}

abstract class canRun {
  void run();
}

abstract class canBark {
  void bark();
}

class Dog extends Animal implements canBark, canRun {
  @override
  void bark() {
  }

  @override
  void run() {
  }
}

class Bird extends Animal implements canFly, canRun {
  @override
  void fly() {
  }

  @override
  void run() {
  }
}
