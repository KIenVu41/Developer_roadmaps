void main() {
  var list = [1, 2, 3];
  final [a, b, c] = list;
  print('$a');

  // pattern matching
  list = [1, 2, 3, 4, 5];
  // rest operator
  final [a1, b1, c1, ...] = list;
  // or
  // final [a1, b1, c1, ...d] = list;

  final jsoned = {
    "userId": 1,
    "id": 1,
  };

  // dart 3 check matching
  if (jsoned case {'userId': int userId, 'id': int id}) {
    print('$userId $id');
  } else {
    print('Incorrect json');
  }

  //final {'userId': userId, 'id': id} = jsoned;
  switch (jsoned) {
    case {'userId': int userId, 'id': int id}:
      print('$userId $id');
    default:
      print('Incorrect json');
  }

  // class
  final human = Human('Kien', 24);
  final Human(:name, :age) = human;
  // = Human(:age, :name)
  // Human(age:agee, name:smt)
  print(name);

  // collections
  List<String> listItems = ['Hi', 'MAN'];
  int index = 2;
  switch(listItems) {
    case ['HI' || 'Hi', 'MAN'] when index == 2:
      print('matching');
    default:
      print('not matching');
  }

  // more switch-case
  int page = 1;
  int lastPage = 1;
  final text = switch(page) {
    0 => 'Click here',
    1 when page == lastPage => 'Click me',
    _ => 'None',
  };
  print(text);
}

class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}