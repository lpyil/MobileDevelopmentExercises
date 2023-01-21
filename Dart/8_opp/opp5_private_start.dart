void main(List<String> args) {
  DataF db = DataF();
  print(db.Connect());
  db._user = "asd";
  print(db.Connect());
}

// private yapmak için başına _ koy
// aynı dosyada erişim var!!!
class DataF {
  String _user = "lp";

  bool Connect() {
    if (_user == "lp") {
      return true;
    } else
      return false;
  }
}
