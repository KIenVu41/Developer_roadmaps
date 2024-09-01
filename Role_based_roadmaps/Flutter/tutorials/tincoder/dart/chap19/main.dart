// phân biệt final và const

/*
  Từ khóa 'const' được dùng khi giá trị của biến được biết trước và không đổi.
Nhưng final ít nghiêm ngặt hơn, nó chứa các giá trị không thay đổi nhưng giá trị đó
có thể không xác định trong 1 khoảng thời gian ngay cả sau khi biên dịch nhưng một
khi đã xác định thì giá trị đó không bao giờ thay đổi.
- instance variables: chỉ có thể là final không thể là const
- const: chỉ có thể là static variables
 */

import 'user.dart';

const double pi = 3.14;
const String TAG = 'MY_TAG';

final int a = 0;

void main() {
  var user = const User(1, 'KV');
  //user.id = 2; => error
  print(User.TAG);
  var user2 = const User(1, 'KV');
  print(user == user2); // cùng địa chỉ ô nhớ khi 2 object giống nhau
}
