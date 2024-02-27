void main() {
  // Inheritamce
  // "is-a"
  // OOP
  var car = Car();
  car.printSmt();

  Car car2 = Car();
  car2.accelerate();
  print(car2.speed);
}

class SomeClass {
  int speed = 15;
  void accelerate() {
    speed += 30;
  }

}
class Vehicle extends SomeClass {
  @override
  int speed = 2;
  bool isEngineWorking = false;
  bool isLightOn = true;

  int accelerate() {
    speed += 10;
    return speed;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;

  void printSmt() {
    print(noOfWheels);
  }
}
