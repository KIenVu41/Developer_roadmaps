void main() {
  // for (init; condition; increment/decrement)
  for (var i = 0; i < 10; i++) {
    print("Hello $i");
  }

  // for in loop
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }
}