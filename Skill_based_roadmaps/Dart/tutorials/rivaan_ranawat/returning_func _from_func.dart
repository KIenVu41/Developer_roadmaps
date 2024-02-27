void main() {
  final stuff = printStuff();
  stuff();
}

Function printStuff() {
  return () {
    print('YOOOO');
  };
}