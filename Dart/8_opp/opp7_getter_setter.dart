void main(List<String> args) {}

class Customer {
  int? _CustomerID;

  /*Customer(int CustomerID) {
    this._CustomerID = CustomerID;
  }*/

  Customer(int CustomerId) {
    ;
    _CustomerIdCheck(CustomerId);
  }
  void _CustomerIdCheck(int no) {
    if (no > 300) {
      _CustomerID = no;
    } else
      return;
  }

  void info() {
    print("new customer and id : $_CustomerID");
  }
}
