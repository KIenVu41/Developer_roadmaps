// Cấu trúc dữ liệu Sets

var numbers = <int>{};
var numbers2 = <int>{1, 2, 3};
var n = {1, 's'};

Set<int> numbers3 = <int>{4, 5, 6};
Set<dynamic> sets = {1, 'as', 2};

void main() {
  // kiểm tra kích thước
  numbers.length;

  // duyệt các phần tử
  numbers2.forEach((element) {
    print(numbers);
  });

  // thêm phần tử
  numbers.add(2);
  numbers.add(4);
  numbers.addAll(numbers2);

  numbers.forEach((element) {
    print(element);
  });

  // xoá phần tử
  numbers.remove(2);
  numbers.clear();
  numbers.removeAll({2, 1, 3});

  // truy cập phần tử
  numbers.first;
  numbers.last;
  numbers.elementAt(1);

  // kiểm tra tồn tại
  numbers.contains(2);
}
