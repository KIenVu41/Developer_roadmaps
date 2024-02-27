void main() {
  Animal anim = Cat();
  switch(anim) {
    case Dog(): print('Dog');
    case Cat(): print('Cat');
    case Human(): print('Human');
  }

  final animal = Animal1();
  switch(animal) {

  }
}

sealed class Animal {}

final class Animal1 {}

base class Animal2 {}

interface class Animal3 {}

abstract interface class Animal4 {}

mixin class Animal5 {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat implements Animal {}