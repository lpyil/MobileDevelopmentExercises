import 'dart:io';

void main(List<String> args) {

  
  String name = stdin.readLineSync()!;
  int score = int.parse(stdin.readLineSync()!);
  print("Name is: $name, Score is: $score");
}
