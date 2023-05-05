import 'dart:io';

// Girilen üçgenin hangi kenar olduğunu bulma
void main(List<String> args) {
  // kenarları girilen üçgnein çeşidi

  int? kenar1 = int.parse(stdin.readLineSync()!);
  int? kenar2 = int.parse(stdin.readLineSync()!);
  int? kenar3 = int.parse(stdin.readLineSync()!);

  if (kenar1 == kenar2 && kenar3 == kenar2) {
    print("eşkenar");
  } else if ((kenar1 == kenar2 && kenar1 != kenar3) ||
      (kenar2 == kenar3 && kenar1 != kenar3) ||
      (kenar3 == kenar1 && kenar2 != kenar1)) {
    print("ikizkenar");
  } else {
    print("çeşitkenar");
  }
}
