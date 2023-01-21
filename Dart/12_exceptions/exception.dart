void main(List<String> args) {
  print("start\n");
  int num = 100 ~/ 6;
  // ~ double error go
  print(num);

  try {
    num = 100 ~/ 0;
    print(num);
  } catch (e) {
    //
    print("BOOM --> $e\n");
  } finally {
    //  ending always work
    print("exiting try\n ");
  }

  try {
    
    int num2 = 100 ~/ int.parse("lp");
    print(num2);
  // ignore: deprecated_member_use 
  } on IntegerDivisionByZeroException { // TODO:WHY
    print("how to divide a number to 0 ?");
  } on FormatException catch (e) {
    print("How to divide int/String ?");
    print(e.message);
    print(e.source);
  } catch (e) {
    print(e);
  } finally {
    print("\nexiting 2. try\n");
  }

  print("\nfinish");
}
// After first catch break try 