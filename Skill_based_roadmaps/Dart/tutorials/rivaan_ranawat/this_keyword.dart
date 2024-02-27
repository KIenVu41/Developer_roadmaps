void main() {
  final cookie = Cookie('Rect', 15.2);
}

class Cookie {
  
  String shape;
  double size;
  
  Cookie(this.shape, this.size) {
    print(this); // instance of 'Cookie'
    print('Cookie constructor called');
    baking();
  }

  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}