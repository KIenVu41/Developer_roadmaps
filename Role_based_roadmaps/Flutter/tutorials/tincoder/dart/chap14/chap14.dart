// Phạm vi truy suất (public, private) và Getter & Setter

class User {
  int _id = 0; // private _
  String _name = "default";

  User(this._id, this._name);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = name;
  }

  @override
  String toString() {
    _logInfor();
    return '$_id - $_name';
  }

  // private function
  void _logInfor() {
    print('$_id - $_name');
  }
}
