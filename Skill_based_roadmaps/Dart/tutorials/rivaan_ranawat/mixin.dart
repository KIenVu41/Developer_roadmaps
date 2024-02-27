void main() {
  //Jump jump = Jump(); Mixins can't be instantiated
  final anim = Cat();
  Object a = Cat();
  print(a.runtimeType);
  anim.fn(); // 12
}

// mixin Jump {
//   int jumping = 10;
// }

mixin Jump on Animal {
  int jumping = 10;
}

mixin Scream on Animal {
  int jumping = 12;
}

class Animal {
  
}

class Cat extends Animal with Jump, Scream {
  void fn() {
    print(jumping);
  }
}