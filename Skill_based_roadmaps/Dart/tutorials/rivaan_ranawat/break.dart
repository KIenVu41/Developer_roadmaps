void main() {
  String value = 'Hello';
  for (int i = 0; i < value.length; i++) {
    if (i == 1 || i == 2 || i == 3) {
      // exit current loop
      break;
    }
    print(value[i]);
  }
}