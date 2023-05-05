void main(List<String> args) {
  int a = 5;
  double b = 2.1;
  num c = 54131.1;

  String d = "AAAAAAaa";

  bool e = true;

  var f = false;
  // var oto tür
  print(a + b + c);
  print(d);
  print(e);
  print(f);

  int sayi = 54.5.toInt(); // change data type ** you can't change assigned var
  print(sayi);

  int? s1 = null; // can be assign null value but you can't work on ex: s1+5

  print(s1);

  int hexSayi = 0xAABBCC; // Hex sayı  atama  
  print(hexSayi);
}
