void main() {
  /*
    {
      'key': 'value',
      'key2': 'value2',
    }
  */
  final list = [10, 15, 30];
  Map<String, int> marks = {
    'Kien': 10,
    'Long': 9,
    'An': 7,
  };

  print(marks['Kien']?.isEven);


  // add
  marks['Giang'] = 6;
  marks.addAll({
    'Vu': 8,
    'Quan': 6,
  });

  // update
  marks['Kien'] = 9;

  // remove
  marks.remove("Long");

  // iterable
  for (int i = 0; i < marks.length; i++) {
    print('${marks.keys.toList()[i]} : ${marks.values.toList()[i]}');
  }

  marks.forEach((key, value) {
    print('$key : $value');
  });

  //
  List<Map<String, int>> markList = [{
    'Math': 23,
    'CS': 22,
    'Englist': 30,
  },
  {
    'Math': 22,
    'CS': 12,
    'Englist': 44,
  }];

  markList.map((e) {
    print(e);
  }).toList();

  print(marks);
}

class Student {
  final String name;
  final int marks;

  Student(this.name, this.marks);

  @override
  String toString() => 'Student: $name';
}