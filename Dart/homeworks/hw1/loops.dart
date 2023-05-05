// adını 5 kere yazdır tüm looplar

void main(List<String> args) {
  String name = "Alp";
  int i = 0;

  while (i < 3) {
    print(name);
    i++;
  }
  i = 0;

  do {
    print(name + "2");
    i++;
  } while (i < 3);

  for (var i = 0; i < 3; i++) {
    print(name + "3");
  }
}
