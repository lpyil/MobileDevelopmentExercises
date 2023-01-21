// içerideki fonks dışarıdakine erişebilmesi

// değer saklanır 

//TODO: TEKRAR BAK

void main(List<String> args) {
  print("AAAAAAAAA");

  var returnFun = sum(3);
  print(returnFun(3));

  var eq = returnFun(5);
  print(eq);
}

Function sum(int element) {
  return (int value) => value * element;
}
