void main(List<String> args) {
  Set<String> names = Set();

  names.add("sad");
  names.add("sad");
  names.add("st");
  names.add("sad");
  names.add("aw");

  print(names);

  for (String i in names) {
    print("isim : $i");
  }

  print(names.length);

  bool result = names.remove("aw");
  print(result);
  print(names);

  print("**********");


  // add all
  List<int> numbers2 = [0, 2, 4, 6, 8, 6, 2, 4, 0];
  Set<int> evens = Set.from([]);

  evens.addAll(numbers2);
  print(evens);


  Set<int> numbers = Set.from([1, 2, 3, 1, 3, 5, 4, 3, 2, 1]);
  print(numbers);


  
  for (int i in numbers) {
    print("numbers is : $i", );
  }
}
