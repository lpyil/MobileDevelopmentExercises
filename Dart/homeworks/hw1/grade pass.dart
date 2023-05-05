import 'dart:io';

// vize final notlarının geçip geçmediği

void main(List<String> args) {
  int? sinav1 = int.parse(stdin.readLineSync()!);
  int? sinav2 = int.parse(stdin.readLineSync()!);

  if ((sinav1 * 2 / 5 + sinav2 * 3 / 5) > 50) {
    print("geçtiniz");
  } else {
    print("Kaldiniz");
  }
}
