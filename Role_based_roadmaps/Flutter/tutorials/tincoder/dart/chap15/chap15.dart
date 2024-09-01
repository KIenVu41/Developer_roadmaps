// Tính kế thừa (extends) & tính trừu tượng (abstract)

import 'people.dart';
import 'person.dart';

class User15 extends Person15 {
  int id = 0;
  String name = '';

  // khi superclass có constructor thì contructor của baseclass phải khởi tạo superclass
  User15(this.id, this.name) : super(18);

  void logInfor() {
    print('$id - $name - $age');
  }
}

class User15v2 extends People {
  int id = 0;
  String name = '';

  User15v2(this.id, this.name);

  @override
  void function1() {
    // phải ghi đè phương thức abstract
    print('overwrite func 1');
  }

  @override
  void function2() {
    // gọi đến phương thức lớp cha
    super.function2();
  }
}
