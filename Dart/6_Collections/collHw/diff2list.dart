/* 4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
 Bu elemanları tek bir listeye aktarın
 Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.

 
 */

import 'dart:math';

void main(List<String> args) {
  List<int> list1 = <int>[];
  List<int> list2 = <int>[];

  for (var i = 0; i < 5; i++) {
    var randomInt = Random().nextInt(10) + 1;
    list1.add(randomInt);
    randomInt = Random().nextInt(10) + 1;
    list2.add(randomInt);
  }

  List<int> last = <int>[];
  last = [...list1, ...list2];

  print("${list1} \n${list2}\n");

  print(last);

  Set<int> LastSet = <int>{};

  LastSet.addAll(last);
  print(LastSet);
}
