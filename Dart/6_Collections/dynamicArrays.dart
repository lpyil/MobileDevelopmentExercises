void main(List<String> args) {
  List<int> numbers = [];
  numbers.add(2);
  numbers.add(3);

  print(numbers);

  List<String?> names = [];
  List<int> numbers3 = List.filled(3, 2, growable: true);


  names.add("asd");
  print(names[0]);

  names.length = 5;
  print(names);

  List<int> numbers2 = [2, 3];
  numbers2.add(33);
  print(numbers2);

  numbers3.add(4);

  numbers3.length = 0;
  print(numbers3);
}
