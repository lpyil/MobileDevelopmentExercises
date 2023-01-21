// sırasız key value şeklinde tutulur

void main(List<String> args) {
  Map<String, int> alanKodlari = {
    "ankara": 312,
    "bursa": 224,
    "istanbul": 212,
    "adana": 0101
  };

  print(alanKodlari);
  print(alanKodlari["bursa"]);

  // dynamic yerine Object yazılabilir

  Map<String, dynamic> alp = {
    "surname": "Yıl",
    "yaş": 23,
    "boy": 171.1,
    "isAlive": false
  };

  print(alp["isAlive"]);
  print("*******");

  Map<String, dynamic> emptyMap = Map();
  Map<String, dynamic> emptyMap2 = {};

  print(emptyMap);

  print(emptyMap2);
  emptyMap2['yaş'] = 19;
  print(emptyMap2["yaş"]);

  print("*******");

  for (String element in alp.keys) {
    print(element);
  }
  print("\n******");
  for (String element in alp.keys) {
    print(alp[element]);
  }
}
