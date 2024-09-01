// condition ? expr1 : expre2
// ??
// (..) Cascades
// =>

import '../../../../../Skill_based_roadmaps/Dart/tutorials/rivaan_ranawat/named_records.dart';

var check;
var name;

void main() {
  name = (check == null) ? 'Default' : check;
  print(name);

  name = check ??
      "Default"; // check null trước khi sử dụng: nếu check = null thì gán giá trị cho biến

  List<int> numbers = [];
  // numbers.add(1);
  // numbers.add(2);
  numbers
    ..add(1)
    ..add(2);

  numbers.forEach((element) {
    print(element);
  });

  numbers.forEach((e) => print(e));
}
