import Foundation

func multiplyByTwo(_ value: Int? = nil) -> Int {
    if let value {
        return value * 2
    } else {
        return 0
    }
}

print(multiplyByTwo())

let age: Int? = 1
if age != nil {
    print("Age is there! How odd!")
} 

if let age {
    print("Age is there. How odd! Its value is \(age)")
}

func checkAge() {
    guard age != nil else {
        print("Age is nil")
        return
    }
}

checkAge()

let age2: Int? = 0
func checkAge2() {
    guard let age2 else {
        print("Age is nil")
        return
    }
    print("Age2 is not nil. Value = \(age2)")
    
}
checkAge2()


switch age {
    case .none:
        print("Age has no value as expected")
        break
    case let .some(value):
        print("Age has the value of \(value)")
        break
}

if age == .some(0) {
    print("Age2 is 0")
}

struct Person {
    let name: String
    let address: Address?
    struct Address {
        let firstLine: String?
    }
}

let foo: Person = Person(
    name: "Foo",
    address: nil
)

if let fooFirstAddressLine = foo.address?.firstLine {
    fooFirstAddressLine
} else {
    print("Foo doesnt have an address with first line")
}

let bar: Person? = Person(
    name: "Bar",
    address: Person.Address(
        firstLine: nil
    )
)

if bar?.name == "Bar",
    bar?.address?.firstLine == nil {
        print("Bar's name is Bar and has no fist line of address")
    } else {
        print("Seems like something isnt working right")
    }

let baz: Person? = Person(
    name: "Baz",
    address: Person.Address(
        firstLine: "Baz first line"
    )
)

switch baz?.address?.firstLine {
    // case let .some(firstLine) where firstLine.start(with: "Baz"):
    //     print("Baz first address line = \(firstLine)")
    //     break
    case let .some(firstLine):
        print("Baz first address line that didnt match the previous case")
        break
    case .none:
        print("nil")
}


func getFullName(
    firstName: String,
    lastName: String?
) -> String? {
    if let lastName {
        return "\(firstName) \(lastName)"
    } else {
        return "\(firstName)"
    }
}

let name = getFullName(
    firstName: "Foo",
    lastName: nil
)

print(name)

func getFullName2(
    firstName: String,
    lastName: String?
) -> String? {
    guard let lastName else {
        return nil
    }
    return "\(firstName) \(lastName)"
}















