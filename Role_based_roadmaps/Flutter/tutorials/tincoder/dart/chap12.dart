// Các cách khai báo hàm

void main() {
  logInfor();
  logInfor2();
  logName('KV');
  calSum(3, 4);
  check(2, 3);
  check2(a: 2, b: 3, c: 1);
  check3(b: 2, c: 3);
}

void logInfor() {
  print('Flutter');
}

void logInfor2() => print('Flutter');

void logName(String name) {
  print('Hi $name');
}

int calSum(int a, int b) => a + b;

// optional
void check(int a, [int? b, int? c]) {
  print(a);
  print(b);
  print(c);
}

// named
void check2({int? a, int? b, int? c}) {
  print(a);
  print(b);
  print(c);
}

// default value
void check3({int a = 4, int? b, int? c}) {
  print(a);
  print(b);
  print(c);
}
