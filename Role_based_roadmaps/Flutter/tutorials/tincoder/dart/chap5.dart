// Cấu trúc Maps

void main() {
  var map1 = {};
  var map2 = {
    'id': 12,
    'name': 'kien',
    'age': 24,
  };
  // kiểm tra phần tử
  print(map1.length);

  // duyệt map
  map2.forEach((key, value) {
    print('$key $value');
  });
  for (var key in map2.keys) {
    print('$key');
  }

  // thêm phần tử
  map2['phone'] = '092212';

  map1.addAll(map2); // nếu các key trùng nhau thì giá trị khi add sẽ bị ghi đè
  print(map1);

  // truy cập phần tử
  print(map2['name']);

  // xóa phần tử
  map2.remove('name');
  map2.clear();

  // kiểm tra tồn tại
  map2.containsKey('name');
  map2.containsValue('kien');
}
