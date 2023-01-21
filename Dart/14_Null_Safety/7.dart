// Object properties

import 'dart:math';

void main(List<String> args) {
  final create1 = Randomer();
  String? value = create1.create();

  if (value == null) {
    print("It's null");
  } else {
    printText(value);
  }
}

void printText(String value) {
  print(value);
}

class Randomer {
  String? create() {
    if (Random().nextBool()) {
      return "string text";
    } else {
      return null;
    }
  }
}
