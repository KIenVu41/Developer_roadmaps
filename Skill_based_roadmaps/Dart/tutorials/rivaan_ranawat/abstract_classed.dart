void main() {
  final car = Car();
  car.accelerate();
}

abstract class Vehicle {
  void accelerate();

  void greeting() {
    print('hello');
  }
}

class Car implements Vehicle {
  @override
  void accelerate() {
    print('accelerating');
  }
  
  @override
  void greeting() {
    // TODO: implement greeting
  }

}

class Truck extends Vehicle {
  @override
  void accelerate() {
    // TODO: implement accelerate
  }
}