void main() {
  print(Constants.greeting);
  print(Constants.bye);
  print(Constants.getValue());
}

class Constants {
  Constants() {
    print('constructor called'); // not initialize
  }
  
  static String greeting = 'Hello, how are you?';
  static String bye = 'Bye!';

  static int getValue() {
    return 10;
  }
}