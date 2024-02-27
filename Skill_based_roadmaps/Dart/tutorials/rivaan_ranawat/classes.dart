// PascalCase
class Cookie {
  // variables
  String shape = 'Circle';
  double size = 15.2;

  // method
  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }

  @override
  String toString() {
    return '$shape $size';
  }
}

void main() {
  var cookie = Cookie();
  cookie.baking();
  print(cookie.toString());
  Object a = 2;
  print(a.runtimeType);
}