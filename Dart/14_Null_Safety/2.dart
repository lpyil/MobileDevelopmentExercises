// Generic types

// Want to list is null -->List<String>?
// in list they can be null --> List<String?>

void main(List<String> args) {
  List<String> list1 = ["lp", "brs", "sad"];
  print(list1);

  List<String>? nullList = null;
  print(nullList);

  List<String?> indexNullList = ["lp", null, "brs"];
  print(indexNullList);
}
