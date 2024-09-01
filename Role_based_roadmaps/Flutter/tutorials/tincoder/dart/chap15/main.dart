import 'chap15.dart';

void main() {
  var user = User15(1, 'KV');
  user.logInfor();
  user.logAge(); // kế thừa phương thức lớp cha

  var user2 = User15v2(1, 'KV');
  user2.function1();
  user2.function2();
}
