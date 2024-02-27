void main() {
  Animal cat = Cat();
  cat.sound();
  cat = new Dog();
  cat.sound();
}

class Animal {
  void sound() {
    print('Animal making sound');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat making sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog making sound');
  }
}