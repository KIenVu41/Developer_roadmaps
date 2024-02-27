abstract class Animal {
  void sound();
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat making sound');
  }
}

void main() {
  Animal cat = Cat();
  cat.sound();
}