void main(List<String> args) async {
  print("program started ");
  Future.delayed(Duration(seconds: 1), (() {
    print("Test Future");
  }));
  print("program finished");

  Future<int> sum = Future(() {
    int sum = 0;
    for (var i = 0; i < 100000000; i++) {
      sum += i;
    }

    return sum;
  });

  // sum.then((int sum) => print(sum)).catchError((error) => print(error));
  // also:
  try {
    int forSum = await sum;
    print("*** $forSum");
  } catch (e) {
    print(e);
  }
  //  mock
  //  Future.value("lp"); // only value return
  //  Future.error("boom"); // return error
}












