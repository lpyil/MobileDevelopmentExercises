// We are gonna use await -->  must be writen async where we use
void main(List<String> args) {
  print("Main start ");
  funcAwait();
  print("Main finished ");
}

void funcAwait() async {
  String p1 = await process();
  print(p1);
}

Future<String> process() {
  return Future<String>.delayed(Duration(seconds: 3), () => "info is x");
}
