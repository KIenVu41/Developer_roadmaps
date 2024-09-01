class User {
  // không thể dùng const với properties
  // chỉ có thể dùng const với static
  final int id;
  final String name;
  static const String TAG = 'TAG';

  // const constructor: khi khởi tạo object thì sẽ cấp phát trên 1 địa chỉ ô nhớ
  const User(this.id, this.name);
}
