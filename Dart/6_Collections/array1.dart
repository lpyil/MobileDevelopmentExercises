
void main(List<String> args) {
  List<int> numbers = List.filled(3, 0, growable: false);

  // growable default false --> sabit uzunluk
  print(numbers);

  List<String> names = List.filled(2, "");
  print(names);
  names[0] = 5.toString();
  print(names);

  List mix = List.filled(5, 0);
  mix[3] = "sa";
  mix[2] = false;

  print(mix);
// same
  List<dynamic> mix2 = List<dynamic>.filled(4, "");
  mix2[1] = true;

  print(mix2);
}
