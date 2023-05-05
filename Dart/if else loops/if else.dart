void main(List<String> args) {
  int a = 5;
  int b = 7;
  if (a < b) {
    print("small");
  } else if (a > b) {
    print("big");
  } else {
    print("eq");
  }

  a < b ? print("small") : print("big"); // ? if/ : else

  int smallOne;
  smallOne = a < b ? a : b;
  print(smallOne);

  String? name = null;
  String? surName = "lp";
  String? message;

  message = name ?? surName; // if a null run b
  print(message);
}
