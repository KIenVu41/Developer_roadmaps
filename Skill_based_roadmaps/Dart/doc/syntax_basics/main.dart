const name2 = 'Kien';

void main() {
  final list = [1, 2];
  list.add(1);
  list.add(3);
  printInts(list);
}

/// [Human]
//
@Deprecated("deprecate")
class Human {
  static const name = 'hieelo';
}

abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

void printInts(List<int> a) => print(a);