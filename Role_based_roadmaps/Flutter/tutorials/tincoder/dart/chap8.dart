// Convert giữa các cấu trúc dữ liệu: List, Map, Set, Queue
import 'dart:collection';

var numbers = <int>[1, 2, 3];
List<int> list1 = [4, 5, 6];
List<String> list2 = ['alpha', 'beta', 'gamma'];
void main() {
  // Duyệt phần tử rồi add tương ứng
  Set<String> set1 = {};
  list2.forEach((element) {
    set1.add(element);
  });
  // add all phần tử
  Set<String> set2 = {};
  set2.addAll(list2);
  // .from()
  Set<dynamic> set3 = Set.from(list1);

  var q = Queue.from(numbers);
  q.forEach((element) {
    print(element);
  });
  // .map()
  List<String> list3 = numbers.map((e) => e.toString()).toList();
  Set<String> set4 = list1.map((e) => e.toString()).toSet();
}
