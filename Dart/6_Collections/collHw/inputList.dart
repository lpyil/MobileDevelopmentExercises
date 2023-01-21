/*
5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini
 girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/

import 'dart:io';

void main(List<String> args) {
  print("ilk input (pozitif)");
  List<int> list1 = [];
  while (true) {
    int? input = int.parse(stdin.readLineSync()!);

    if (input == 0) {
      break;
    } else if (input < 0) {
      print("pozitif");
      continue;
    }
    list1.add(input);
  }

  print(list1);
  double sum = 0;
  for (var i = 0; i < list1.length; i++) {
    sum += list1[i];
  }

  print(sum / list1.length);
}
