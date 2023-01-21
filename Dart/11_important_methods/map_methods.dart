void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  print(map2);

  map["id"] = 4;
  map["name "] = "lp";
  map["color"] = "blue";
  map["surname"] = "b";

  print("$map\n");

  var newMap = Map.from({"value ": "new"});
  print("$newMap\n");

  var mapFromEntries = Map.fromEntries(map.entries);
  print("$mapFromEntries\n");

  print("------");

  var liste = <int>[1, 2, 3, 4];
  // It's gives keys and values same 
  var mapFromIterable = Map.fromIterable(liste);

  print("Map from list default : $mapFromIterable");

  var mapFromIterable2 = Map<String, String>.fromIterable(liste,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 2}");
  print("Map from list changed keys and values : $mapFromIterable2");

  print("--------");

  map.update("id", (value) => value * 3);
  print(map);

  // if absend --> IF there is no key id_new make new

  map.update("id_new", (value) => value * 3, ifAbsent: () => 100);
  print(map);
  // IF there is no make it, but don't multiple by 3

  map.putIfAbsent("surname", () => "AAAAA");
  print(map);

  // similar to ifabsent
}
