void main() {
  final cookie = Cookie(shape: "Oval", size: 12);
  print(cookie.shape);
  cookie._height = 2;
  print(cookie._height);
  //cookie.height = 2; // not have setter
  print(cookie.height);
}

class Cookie {
  
  final String shape;
  final double size;
  
  Cookie({required this.shape, required this.size});
  
  //Cookie({this.shape, this.size}); -- nullable
  
  // Cookie(this.shape, this.size) {
  //   print('Cookie constructor called');
  //   baking();
  // }

  // Cookie(String shape, double size) {
  //   this.shape = shape;
  //   this.size = size;
  // }

  // Private variables
  int _height = 0; // private in a file
  int _width =  5;

  // Getters
  int get height => _height; // read-only value
  // Setters

  // static function
  // static variables

  //method
  void modifyHeight(int h) {
    _height = h;
  }

  int calculateSize() {
    return _height * _width;
  }

  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}