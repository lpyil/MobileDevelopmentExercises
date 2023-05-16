class Student {
// todo maybe this late part

  late int _id;
  late String _name;
  late int _isActive;

  get id => _id;

  set id(value) => _id = value;

  get name => _name;

  set name(value) => _name = value;

  get isActive => _isActive;

  set isActive(value) => _isActive = value;

  Student(
    this._name,
    this._isActive,
  );
  Student.withId(
    this._id,
    this._name,
    this._isActive,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["active"] = _isActive;

    return map;
  }

  Student.fromMap(Map<String, dynamic> map) {
    _id = map["id"];
    _name = map["name"];
    _isActive = map["active"];
  }

  @override
  String toString() =>
      'Student(_id: $_id, _name: $_name, _isActive: $_isActive)';
}
