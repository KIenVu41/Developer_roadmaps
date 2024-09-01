import 'address.dart';
import 'city.dart';

class User implements City, Address {
  int id = 0;
  String name = '';

  User(this.id, this.name);

  @override
  void showCity() {
    print('override show city');
  }

  @override
  void function1() {
    print('override func1');
  }

  @override
  void showAddress() {
    print('override show address');
  }
}
