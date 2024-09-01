/* Các toán tử cơ bản
1. Toán tử số học
2. Toán tử so sánh
3. Toán tử kiểm tra kiểu: as, is, is!
4. Toán tử gán
5. Toán tử logic
6. Toán tử bitwise và shift
*/

int a = 10;
int b = 7;
int c = -10;

void main() {
  // Số học
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b); // chia lấy phần nguyên
  print(a % b);

  // lấy trị tuyệt đối
  print(c.abs());

  print(++a);
  print(a++);
  // So sánh
  print(a > b);
  print(b < a);
  print(a == b);
  print(a != b);
  print(a >= b);
  print(b <= a);

  // kiểm tra kiểu
  print(a is int);
  print(a is! bool); // true nếu không phải kiểu

  // gán
  a += b; // => a = a + b
  a -= b;
  a *= b;
  a ~/= b;

  // logic
  bool check = false;
  bool tested = false;
  print(!check); // = true
  print(check && tested);
  print(check || tested);
}
