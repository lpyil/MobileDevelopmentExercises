class MyStack {
  List _MyList = [];

  push(new_element) {
    _MyList.add(new_element);
  }

  pop() {
    return _MyList.removeLast();
  }
}

class IntMyStack {
  List<int> _MyList = <int>[];

  void push(int new_element) {
    _MyList.add(new_element);
  }

  int pop() {
    return _MyList.removeLast();
  }
}

class StringMyStack {
  List<String> _MyList = <String>[];

  void push(String new_element) {
    _MyList.add(new_element);
  }

  String pop() {
    return _MyList.removeLast();
  }
}

// All in one

class GenericStack<T> {
  List<T> _MyList = <T>[];

  void push(T new_element) {
    _MyList.add(new_element);
  }

  T pop() {
    return _MyList.removeLast();
  }
}
