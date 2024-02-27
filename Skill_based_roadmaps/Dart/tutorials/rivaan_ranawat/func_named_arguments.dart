void main() {
  printName(24, true, name: "Kien", greeting: 'Welcome');
}

void printName(int age, bool isAdult, {required String name, required String greeting}) {
  print(name);
}