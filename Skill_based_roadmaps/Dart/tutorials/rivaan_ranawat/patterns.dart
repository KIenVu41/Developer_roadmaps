void main() {
  var (age, name, isAdult, greeting) = printName();
  print(name);
}

(int, String, bool, String) printName() {
  return (24, 'KV', true, 'HI');
}