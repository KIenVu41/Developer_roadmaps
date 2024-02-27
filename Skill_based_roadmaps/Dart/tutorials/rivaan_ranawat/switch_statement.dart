void main() {
  String someValue = "Hi";
  // if value is matching, it auto break;
  switch (someValue) {
    case 'Hi':
      print("Hello");
    case 'hello':
      print("Hi");
    default:
      print("YOO");
  }

  // empty cases need to put break
  switch (someValue) {
    case 'Hi':
    case 'Hi!':
    case 'Hi!!':
      print("Hi!!");
    default:
      print("YOO");
  }
  // output: Hi!!

  // Dart 3, switch statement were enhanced
  int age = 20;
  switch (someValue) {
    case 'Hi' when age >= 20:
      print("Hi");
    case 'Hi!':
    case 'Hi!!':
    default:
      print("YOO");
  }
}