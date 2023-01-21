// üçgen çeşitkenar ikizkenar ekrana yazdır değer dönmesin

void main(List<String> args) {
  triangle(ken1: 1, ken2: 2);
  triangle(ken1: 2, ken3: 3);
  triangle();
}

void triangle({int ken1 = 1, int ken2 = 1, int ken3 = 1}) {
  if (ken1 == ken2 && ken1 == ken3) {
    print("eşit");
  } else if (ken1 != ken2 && ken1 != ken3 && ken2 != ken3) {
    print("çeşit");
  } else {
    print("ikiz");
  }
}
