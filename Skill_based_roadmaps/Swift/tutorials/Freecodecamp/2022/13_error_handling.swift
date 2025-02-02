import Foundation

struct Person {
    let firstName: String?
    let lastName: String?
    
    enum Errors: Error {
        case firstNameIsNil
        case lastNameIsNil
        case bothNamesAreNil
    }
    
    func getFullName() throws -> String {
        switch (firstName, lastName) {
            case (.none, .none):
                throw Errors.bothNamesAreNil
            case (.none, .some):
                throw Errors.firstNameIsNil
            case (.some, .none):
                throw Errors.lastNameIsNil
            case let (.some(firstName), .some(lastName)):
                return "\(firstName) \(lastName)"
        }
    }
}

let foo = Person(firstName: nil, lastName: nil)
do {
    let fullName = try foo.getFullName()
} catch {
    print("Got an error = \(error)")
}

do {
    let fullName = try foo.getFullName()
} catch is Person.Errors {
    print("Got an error")
}

let bar = Person(firstName: nil, lastName: nil)
do {
    let fullName = try bar.getFullName()
} catch Person.Errors.firstNameIsNil {
    print("First name is nil")
} catch Person.Errors.lastNameIsNil {
    print("Last name is nil")
} catch Person.Errors.bothNamesAreNil {
    print("Both name are nil")
} catch {
    print("Some other error was throws")
}

struct Car {
    let manuFacturer: String
    
    enum Errors: Error {
        case invalidManufacturer
    }
    
    
    init(manuFacturer: String) throws {
        if manuFacturer.isEmpty {
            throw Errors.invalidManufacturer
        }
        self.manuFacturer = manuFacturer
    }
}

do {
    let myCar = try Car(manuFacturer: "")
} catch Car.Errors.invalidManufacturer {
    print("Invalid manuFacturer")
} catch {
    print("Some other error")
}


if let yourCar = try? Car(manuFacturer: "Tesla") {
    print("Success, your car = \(yourCar)")
}


let theirCar = try! Car(manuFacturer: "Ford")

struct Dog {
    let isInjured: Bool
    let isSleeping: Bool
    
    enum BarkingErrors: Error {
        case cannotBarkIsSleeping    
    }
    
    enum RunningErrors: Error {
        case cannotRunIsInjured
    }
    
    func bark() throws {
        if isSleeping {
            throw BarkingErrors.cannotBarkIsSleeping
        }
        print("Bark...")
    }
    
    func run() throws {
         if isInjured {
            throw RunningErrors.cannotRunIsInjured
        }
        print("Run...")
    }
    
    func barkAndRun() throws {
        try bark()
        try run()
    }
}

let dog = Dog(isInjured: true, isSleeping: true)

do {
    try dog.barkAndRun()
} catch Dog.BarkingErrors.cannotBarkIsSleeping,
        Dog.RunningErrors.cannotRunIsInjured {
    print("Cannot bark is sleeping or cannot run is injured")
} catch {
    print("Some other error")
}

do {
    try dog.barkAndRun()
} catch Dog.BarkingErrors.cannotBarkIsSleeping {
    print("Cannot bark is sleeping")
} catch Dog.RunningErrors.cannotRunIsInjured {
    print("Cannot run is injured")
} catch {
    print("Some other error")
}


// rethrow
func fullName(
    firstName: String?,
    lastName: String?,
    calculator: (String?, String?) throws -> String?
) rethrows -> String? {
    try calculator(firstName, lastName)
}

enum NameErrors: Error {
    case firstNameIsInvalid
    case lastNameIsInvalid
}

func + (
    firstName: String?,
    lastName: String?
) throws -> String? {
    guard let firstName, !firstName.isEmpty else {
        throw NameErrors.firstNameIsInvalid
    }
    guard let lastName, !lastName.isEmpty else {
        throw NameErrors.lastNameIsInvalid
    }
    return "\(firstName) \(lastName)"
}

do {
    let fooBar = try fullName(
        firstName: "Foo",
        lastName: nil,
        calculator: +
    )
} catch NameErrors.firstNameIsInvalid {
    print("First name is invalid")
} catch NameErrors.lastNameIsInvalid {
    print("Last name is invalid")
} catch let err {
    print("Some other error = \(err)")
}




enum IntegerErrors: Error {
    case noPositiveIntegerBefore(thisValue: Int)
}

func getPreviousPositiveInteger(
    from int: Int
) -> Result<Int, IntegerErrors> {
    guard int > 0 else {
        return Result.failure(
            IntegerErrors.noPositiveIntegerBefore(thisValue: int)
        )
    }
    return Result.success(int - 1)
}

func performGet(forValue value: Int) {
    switch getPreviousPositiveInteger(from: value) {
        case let .success(previousValue):
            print("Previous value is \(previousValue)")
            break
        case let .failure(error):
            switch error {
                case let .noPositiveIntegerBefore(thisValue):
                    print("No positive integer before \(thisValue)")
                    break;
            }
    }
}

performGet(forValue: 0)
performGet(forValue: 2)











