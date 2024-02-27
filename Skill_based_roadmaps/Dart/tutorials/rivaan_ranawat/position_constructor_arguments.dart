void main() {
  final cookie = Cookie('Rect', 15.2);
}

class Cookie {
  
  String? shape;
  double? size;
  
  //Cookie(this.shape, this.size);
  
  // Cookie(this.shape, this.size) {
  //   print('Cookie constructor called');
  //   baking();
  // }

  Cookie(String shape, double size) {
    this.shape = shape;
    this.size = size;
  }

  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}