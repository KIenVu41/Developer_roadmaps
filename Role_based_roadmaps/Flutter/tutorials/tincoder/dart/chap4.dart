// Cấu trúc dữ liệu List

// khởi tạo list rỗng
var list1 = []; // không chỉ định kiểu
List<int> list2 = <int>[]; // chỉ định kiểu
List<dynamic> list3 = [];

void main() {
  // Thêm phần tử
  list1.add(2);
  list1.add('hi');

  list2.add(2); // thêm phần tử khác kiểu khai báo sẽ lỗi
  list2.add(3);
  list2.add(4);
  list2.insert(0, 0); // insert phần tử 0 vào vị trí 0

  // duyệt danh sách
  // forEach
  list1.forEach((element) {
    print(element);
  });
  // đảo chiều
  list1.reversed.forEach((element) {});
  // truy cập phần tử
  list2.first;
  list2.last;
  list2[0];

  // xóa phần tử
  list2.remove(2); // xoá phần tử có giá trị 2
  list2.removeAt(0); // xóa phần tử có index = 0
  list2.removeLast();
  list2.removeRange(
      0, 2); // xóa phần từ từ vị trí 0 đến 2 không bao gồm vị trí 2
  list2.clear(); // xóa tất cả phần từ
}
