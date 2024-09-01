// Cấu trúc dữ liệu: Enum, Iterable

// enum: cấu trúc dữ liệu lưu trữ các hằng số
enum Person { one, two, three }

void main() {
  print(Person.values.length); // số lượng phần tử
  print(Person.values[0]); // lấy ra phần tử đầu tiên (tương tự .first)
  print(Person.values.isEmpty);
  //print(Person.values.isNull);

  // duyệt enum
  Person.values.forEach((element) {
    print(element.name);
  });

  // khi kết hợp switch với enum thì bắt buộc check tất cả các case trong enum
  var name = Person.one;
  switch (name) {
    case Person.one:
      print('ONE');
    case Person.two:
      print('ONE');
    case Person.three:
      print('THREE');
  }

  // iterable: collection có thể duyệt qua từng element một
  var numbers = Iterable.generate(10);
  numbers.forEach((element) {
    print(element);
  });

  // for-in
  for (var number in numbers) {
    print(number);
  }
}
