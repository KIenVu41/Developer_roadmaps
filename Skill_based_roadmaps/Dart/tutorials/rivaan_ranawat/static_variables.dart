void main() {
  print(Constants.greeting);
  print(Constants.bye);
}

class Constants {
  Constants() {
    print('constructor called'); // not initialize
  }
  
  static String greeting = 'Hello, how are you?';
  static String bye = 'Bye!';
}