import 'user.dart';

class Student extends User {
  Student(super.id, super.name);

  void logInfor() {
    // class kế thừa có thể sử dụng extension của class cha
    logExtension();
  }
}
