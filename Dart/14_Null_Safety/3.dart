// if we sure nullable type is not null
// null assertion opr --> ! --> act like non-nullable

// IF we are wrong --> get error on runtime

int? nullableButNot = 1;
// In same {} dart can understant nullables
void main(List<String> args) {
  List<int?> inNullList = [2, 3, null];

  int a = nullableButNot!;
  int b = inNullList.first!;
  int c = canBeNullButNot()!.abs();

  print("a: $a, b: $b, c : $c");
}

int? canBeNullButNot() {
  return -5;
}
