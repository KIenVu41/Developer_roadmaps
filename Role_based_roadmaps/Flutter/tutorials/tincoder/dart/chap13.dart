// Lớp đối tượng (class) và Constructor

void main() {
  //var user = User(1, 'Kv', 'Hanoi');
  var user2 = User.name(2, 'FF', 'HANOI');
  var user3 = User(1, name: 'KV', address: 'HANOI');
  var user4 = User.optional(1);
  //print(user.toString());
  print(user2.toString());
  print(user3.toString());
  print(user4.toString());
}

class User {
  // khai báo thuộc tính đối tượng
  // 1. Gán giá trị mặc định
  // 2. Dùng toán tử nullable ?
  // 3. Dùng keyword late
  // 4. Khởi tạo qua constructor
  int? id;
  String name = "";
  late String address;

  // default contructor
  //User(this.id, this.name, this.address);

  // named contructor
  User.name(this.id, this.name, this.address);

  // named param phải có giá trị mặc định, hoặc dùng keyword required
  User(this.id, {this.name = 'default', required this.address});

  // optional param
  User.optional(this.id, [this.name = 'ccc', this.address = 'HN']);

  @override
  String toString() {
    return '$id - $name - $address';
  }
}
