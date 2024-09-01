// Phân biệt kiểu dữ liệu động: var & dynamic
void main() {
  dynamic a; // giá trị mặc định là null, xác định kiểu ở runtime

  a = 5; // a có kiểu int
  a = 'Hello'; // a có kiểu String

  var b =
      'a'; // giá trị mặc định là null, khi đã gán giá trị khi khởi tạo thì không thể gán giá trị có kiểu khác, còn lại tính chất giống dynamic
  //b = 2; error
}
