// Cấu trúc Queue
import 'dart:collection';

var q = Queue();

var q2 = Queue<int>();

void main() {
  // kiểm tra phần tử
  q.length;

  // thêm phần tử
  q.add(2);
  q.addAll({1, 3});
  q.addFirst(5);
  q.addLast(6);

  // duyệt phần tử
  q.forEach((element) {
    print(element);
  });

  // xóa phần tử
  q.remove(1);
  q.removeFirst();
  q.removeLast();
  q.removeWhere((element) => element == 2);
  q.clear();

  // truy cập phần tử
  q.elementAt(0);
  q.first;
  q.last;
}
