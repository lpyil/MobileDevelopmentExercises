// bir fonksiyonu parametre olarak alan ve geriye fonk döndüren fonksiyonlardır

void main(List<String> args) {
  List<int> liste = [1, 2, 3];

  // isimlendirilmemiş  callBack ile isimlendirilmişi oluşturduk
  /*
  liste.forEach((element) {
    print("element is : $element");
  });
  */
  liste.forEach(callBack);
  myForEach(liste, (int value, int index) {
    print("Değer : ${value} and index : $index");
  });
}

void myForEach(List<int> liste, Function callBack) {
  for (var i = 0; i < liste.length; i++) {
    callBack(liste[i], i );
  }
}

void callBack(int element) {
  print("element is : $element");
}
