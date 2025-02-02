import Foundation

let firstName: String? = nil
let lastName: String? = "Bar"

// binary infix
func + (
    lhs: String?,
    rhs: String?
) -> String? {
    switch(lhs, rhs) {
        case (.none, .none):
            return nil
        case let (.some(value), .none),
        let (.none, .some(value)):
            return value
        case let (.some(lhs), .some(rhs)):
            return lhs + rhs
    }
}

let fullName = firstName + lastName
print(fullName)



// unary prefix

prefix operator ^
prefix func ^ (value: String) -> String {
    value.uppercased()
}

let lowercaseName = "Foo Bar"
let uppercaseName = ^lowercaseName
print(uppercaseName)


// unary postfix
postfix operator *
postfix func * (value: String) -> String {
    "*** \(value) ***"
}

let withStars = lowercaseName*
print(withStars)




struct Person {
    let name: String
}

struct Family {
    let members: [Person]
}

let mom = Person(name: "Mom")
let dad = Person(name: "Dad")
let son = Person(name: "Son")
let daughter1 = Person(name: "Daughter 1")
let daughter2 = Person(name: "Daughter 2")

func + (
    lhs: Person,
    rhs: Person
) -> Family {
    Family(
        members: [
            lhs,
            rhs
        ]
    )
}

func + (
    lhs: Family,
    rhs: Person
) -> Family {
    var members = lhs.members
    members.append(rhs)
    return Family(members: members)
}

func + (
    lhs: Family,
    rhs: [Person]
) -> Family {
    var members = lhs.members
    members.append(contentsOf: rhs)
    return Family(members: members)
}

let family = mom + dad 
print(family)
let familyWithSon = family + son
print(familyWithSon)
let familyWithDaughters = familyWithSon + [daughter1, daughter2]
print(familyWithDaughters)