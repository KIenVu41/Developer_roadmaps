void main() {
  final cookie = Cookie(shape: "Oval", size: 12);
  print(cookie.shape);
  //cookie.shape = 'Oval'; -- non-final 
  print('Hello');
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

  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}