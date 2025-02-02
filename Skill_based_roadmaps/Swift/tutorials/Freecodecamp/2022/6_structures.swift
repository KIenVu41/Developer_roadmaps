import Foundation

// struct are value Type

struct Person {
    let name: String
    let age: Int
}

let foo = Person(
    name: "Foo",
    age: 20
)

print("\(foo.name) - \(foo.age)")
print(foo.age)

struct CommodoreComputer {
    let name: String
    let manufacturer: String
    // let manufacture = "Commodore"
    init(name: String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 = CommodoreComputer(name: "C64")
print("\(c64.name) - \(c64.manufacturer)")


struct Person2 {
    let firstName: String
    let lastName: String
    // computer property
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(
    firstName: "Foo",
    lastName: "Bar"
)

print(fooBar.fullName)


struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)

var mutableCar = Car(currentSpeed: 10)
mutableCar.drive(speed: 20)
let copy = mutableCar
mutableCar.currentSpeed // 20
copy.currentSpeed // 10

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(
            manufacturer: self.manufacturer,
            currentSpeed: currentSpeed
        )
    }
}

let bike1 = Bike(
    manufacturer: "HD",
    currentSpeed: 20
)

let bike2 = bike1.copy(currentSpeed: 30)
print(bike2.currentSpeed)


























