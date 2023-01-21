// type safe --> <x> exp List<String>

// List <E> --> Element
// Map <K> --> Key  | <V> --> value
// <R> --> Methods return type

// Student <T extends Human>  --> Student sub class of Human
void main(List<String> args) {
  // we can do this but not prefer

  List list1 = [];
  list1.add("lp");
  list1.add(2);
  list1.add(true);

  print(list1);
}
