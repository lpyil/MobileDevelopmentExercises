void main(List<String> args) {
  dataBase s1 = fireBase();
  userUpdater(s1);
  // Kullanıcıyı değiştirmek istediğimizde firebase i yi oracle a taşımak
  // yeterli bu yüzden Oracle s2 = Oracle(); sınıfından üretmedik
  // abstract class ından üretildi.
}

abstract class dataBase {
  void userSave();
  void userUpdate();
  void userDelete();
}

void userUpdater(dataBase db) {
  db.userUpdate();
}

class Oracle extends dataBase {
  @override
  void userDelete() {
    print("user deleted oracle");
  }

  @override
  void userSave() {
    print("user saved oracle");
  }

  @override
  void userUpdate() {
    print("user updated oracle ");
  }
}

class fireBase extends dataBase {
  @override
  void userDelete() {
    print("user deleted firebase");
  }

  @override
  void userSave() {
    print("user saved fb");
  }

  @override
  void userUpdate() {
    print("user updated fb");
  }
}
