void main() {
  final (age, name) = printStuff();
  print(age);
  print(name);

  final info = printInfo();
  print(info.name);
  print(info.age);
}

(int, String) printStuff() {
  return (24, 'KV');
}

// named record
({int age, String name}) printInfo() {
  return (age: 24, name: 'KV');
}