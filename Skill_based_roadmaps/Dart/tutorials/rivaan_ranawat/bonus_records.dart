void main() {
  final records = (4.5, 'hi', true, 2);
  print(records.$1);

  // nullable
  (double, int)? name = (4.5, 2);
  print(name);
  name = null;

  ({int x, int y, int z}) point = (x: 1, y: 2, z: 3);
  ({int a, int y, int z}) color = (a: 1, y: 2, z: 3);

  //point = color; not equal (arg name different)
}

({double point, String greeting}) giveMeSomeDoubles() {
  return (point: 4.5, greeting: 'Hey!');
}