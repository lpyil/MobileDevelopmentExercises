void main(List<String> args) {
  Admin ad1 = Admin();
  basicUser user1 = basicUser();

  // tersini kuramazsın
  User joker = JustReadUser(); // upcasting

  List<User> AllUsers = [];
  AllUsers.add(ad1);
  AllUsers.add(joker);
  AllUsers.add(user1);


  ad1.login();
  user1.login();
}

class User {
  String mail = "";
  String pass = "";

  void login() {
    print("login success");
  }
}

class Admin extends User {
  void AllUsers() {
    print("all user is x");
  }

  @override
  void login() {
    // üst sınıf fonks override yapılabilir
    print("admin login");
  }
}

class basicUser extends User {
  void invite() {
    print("x davet edildi");
  }
}

class JustReadUser extends basicUser {
  void register() {}
}
