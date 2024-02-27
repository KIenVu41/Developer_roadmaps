
void main() {
  Vehicle car = Car();
  car.accelerate();
}

class Vehicle {
  bool isEnginetWorking = false;
  bool isLightOn = true;
  int noOfWheels = 10;

  void accelerate() {
    print('accelerating');
  }
}

class Car implements Vehicle {
  @override
  bool isEnginetWorking = true;
  
  @override
  bool isLightOn = true;
  
  @override
  int noOfWheels = 4;
  
  @override
  void accelerate() {
    print('accelerating on car');
  }
}
