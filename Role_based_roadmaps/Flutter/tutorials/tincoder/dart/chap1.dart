// Khai báo biến và các kiểu dữ liệu cơ bản: int, double, num, String, bool

import 'dart:ffi';

void main() {
  int a; // non null variable
  int? b = null; // nullable variable

  num c = 5; // num là kiểu cha của int và double

  double d = 0.5;

  String str1 = 'hello';
  print(str1.runtimeType); // check kiểu ở runtime

  String str2 = 'I\'m Nolan'; // escape character

  int age = 10;
  String info =
      'Im $age'; // String template, dùng kết hợp {} nếu bên trong là biểu thức

  bool check = false;

  // Chuyển đổi các kiểu dữ liệu (casting)
  String strAge = age.toString();
  double doubleAge = age.toDouble();
  int intAge = doubleAge.toInt();
  intAge = int.parse(strAge);
}
