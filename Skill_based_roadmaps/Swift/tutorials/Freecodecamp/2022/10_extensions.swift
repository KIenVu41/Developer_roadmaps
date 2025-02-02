import Foundation

extension Int {
    func plusTwo() -> Int {
        self + 2
    }
}

let two = 2
print(two.plusTwo())

struct Person {
    let firstName: String
    let lastName: String
}

extension Person {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        self.init(
            firstName: components.first ?? fullName,
            lastName: components.last ?? fullName
        )
    }
}

let person = Person(fullName: "Foo Bar")
print("\(person.firstName) -- \(person.lastName)")

protocol GoesVroom {
    var vroomValue: String {get}
    func goVroom() -> String
}

extension GoesVroom {
    func goVroom() -> String {
        "\(self.vroomValue) goes vroom!"
    }
}

struct Car {
    let manufactuer: String
    let model: String
}

let modelX = Car(
    manufactuer: "Tesla",
    model: "X"
)

extension Car: GoesVroom {
    var vroomValue: String {
        "\(self.manufactuer) model \(self.model)"
    }
}

print(modelX.goVroom())

class MyDouble {
    let value: Double
    init(value: Double) {
        self.value = value
    }
}

extension MyDouble {
    convenience init() {
        self.init(value: 0)
    }
}

print(MyDouble().value)

extension GoesVroom {
    func goVroomVroomEvenMore() -> String {
        "\(self.vroomValue) is vrooming even more!"
    }
}

print(modelX.goVroomVroomEvenMore())