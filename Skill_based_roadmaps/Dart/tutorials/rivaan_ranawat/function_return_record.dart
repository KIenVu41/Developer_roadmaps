void main() {
  var name = printName();
  print(name.$2);
}

// Dart 3
(int a, String b, bool x) printName() {
  return (24, 'KB', false);
}