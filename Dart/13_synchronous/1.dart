// Future used

void main(List<String> args) {
  print("start");

  Future<String> p1 = processWork();
  // completed | after .catcherror --> uncompleted
  p1
      .then((String value) => print(value))
      .catchError((error) => print("\n$error"))
      .whenComplete(() => print("async work finished"));

  for (var i = 0; i < 4; i++) {
    print("not asyn work : $i");
  }
}

// after coma we define what will do
Future<String> processWork() {
  Future<String> work = Future.delayed(Duration(seconds: 1), () {
    print("\n");

    for (var i = 0; i < 25; i++) {
      print("async stuff : $i");
    }

    1 / 0;
    throw Exception("Boom");
  });

  return work;
}
