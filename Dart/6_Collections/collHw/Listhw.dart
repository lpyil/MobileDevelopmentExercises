// şehirleri tutab bir liste 4 il ekle sırayla yazdır

void main(List<String> args) {
  List<String> cities = <String>["ad", "an", "ist", "iz"];
  List<String> cities2 = List.filled(4, " ");

  print(cities);

  for (var i in cities) {
    print(i);
  }

  print(cities2);
}
