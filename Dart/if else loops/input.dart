import 'dart:io';

void main(List<String> args) {
  print("Name");
  String name = stdin.readLineSync()!;
  print(name);

  print("score");

  int score = int.parse(stdin.readLineSync()!);
  print(score);
}
