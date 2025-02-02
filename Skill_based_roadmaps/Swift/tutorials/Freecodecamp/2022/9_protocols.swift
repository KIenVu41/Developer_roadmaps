import Foundation

protocol CanBreathe {
    func breathe()
}

struct Animal: CanBreathe {
    func breathe() {
        print("Animal breathing...")
    }
}

struct Person: CanBreathe {
    func breathe() {
        print("Person breathing...")
    }
}

let dog = Animal()
dog.breathe()

protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        print("Jumping...")
    }
}

struct Cat: CanJump {
}

let cat = Cat()
cat.jump()

protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

extension HasName {
    func describeMe() {
        print("Your name is \(name) and you are \(age) years old")
    }  
    mutating func increaseAge() {
        self.age += 1
    }
}

var dog2 = Dog(
    name: "woof",
    age: 10
)
dog2.age += 1
dog2.describeMe()
dog2.increaseAge()

protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}

var bike = Bike()
bike.increaseSpeed(by: 10)
print(bike.speed)

// is
// as, as?
func describe(obj: Any) {
    if obj is Vehicle {
        print("Obj conforms to the vehicle protocol")
    }
}

describe(obj: bike)

func increaseSpeedIfVehicle(obj: Any) {
    if var vehicle = obj as? Vehicle {
        vehicle.increaseSpeed(by: 10)
        print(vehicle.speed)
    } else {
        "This was not a vehicle"
    }
}

increaseSpeedIfVehicle(obj: bike)
















