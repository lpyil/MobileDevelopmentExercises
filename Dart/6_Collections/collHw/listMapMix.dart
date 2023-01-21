/*3- Her bir elemanında keyleri string, valuelleri dynamic map olan bir liste olusturun.
 Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
 Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
 örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele
 olabilir).
 */

 

void main(List<String> args) {
  List<Map<String, dynamic>> cities = <Map<String, dynamic>>[];

  Map<String, dynamic> addC1 = <String, dynamic>{};
  Map<String, dynamic> addC2 = <String, dynamic>{
    "il adi": "adana",
    "il kodu ": 1
  };

  addC1["il adi"] = "ankara";
  addC1["ilk kodu "] = 6;

  cities.add(addC1);
  cities.add(addC2);

  print(cities);
  print("\n ${cities[0]}");
}
