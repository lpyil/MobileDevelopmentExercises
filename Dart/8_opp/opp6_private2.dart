import 'dart:math';

class DataFrame {
  String _user = "lp";
  //default
  DataFrame() {}

  DataFrame.loginNameandSurname(String user, String pass) {}

  bool Connect() {
    if (_Connetion()) {
      if (_user == "lp") {
        return true;
      } else
        return false;
    } else
      return false;
  }

  bool _Connetion() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
