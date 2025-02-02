import Foundation

struct Person: Equatable {
    let id: String
    let name: String
}

let foo1 = Person(
    id: "1",
    name: "Foo"
)

let foo2 = Person(
    id: "1",
    name: "Bar"
)

if foo1 == foo2 {
    print("Ther are equal")
}

// extension Person {
//     static func == (
//         lhs: Self,
//         rhs: Self
//     ) -> Bool {
//         lhs.id == rhs.id
//     }
// }

enum AnimalType: Equatable {
    case dog(breed: String)
    case cat(breed: String)
}

let dog1 = AnimalType.dog(breed: "Labradoodle")
let dog2 = AnimalType.dog(breed: "Labradoodle")

if dog1 == dog2 {
    print("They are equal")
}

// extension AnimalType: Equatable {
//     static func == (
//         lhs: Self,
//         rhs: Self
//     ) -> Bool {
//         switch(lhs, rhs) {
//             case let (.dog(lhsBreed), dog(rhsBreed)),
//             let (.cat(lhsBreed), cat(rhsBreed)):
//                 return lhsBreed == rhsBreed
//             default:
//                 return false
//         }
//     }
// }

struct Animal: Equatable {
    let name: String
    let type: AnimalType
    
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.type == rhs.type
    }
}

let cat1 = Animal(
    name: "cat1",
    type: AnimalType.cat(
        breed: "Street cat"
    )
)

let cat2 = Animal(
    name: "cat2",
    type: AnimalType.cat(
        breed: "Street cat"
    )
)

if cat1 == cat2 {
    print("They are equal because of their type")
}


struct House: Hashable {
    let number: Int 
    let numberOfBedrooms: Int
}

let house1 = House(
    number: 123,
    numberOfBedrooms: 2
)
house1.hashValue

let house2 = House(
    number: 123,
    numberOfBedrooms: 3
)

let houses = Set([house1, house2])
houses.count

struct NumberedHouse: Hashable {
    let number: Int
    let numberOfBedrooms: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
}

let house3 = NumberedHouse(
    number: 123,
    numberOfBedrooms: 2
)

let house4 = NumberedHouse(
    number: 123,
    numberOfBedrooms: 3
)

let houses3And4 = Set([house3, house4])
print(houses3And4.count)
print(house3.number.hashValue)
print(house4.number.hashValue)


enum CarPart {
    case roof
    case tire
    case trunk
}

let uniqueParts: Set<CarPart> = [
    .roof,
    .tire,
    .roof,
    .trunk
]

enum HouseType: Hashable {
    case bigHouse(NumberedHouse)
    case smallHouse(NumberedHouse)
}

let bigHouse1 = HouseType.bigHouse(NumberedHouse(
    number: 1,
    numberOfBedrooms: 1
))

let bigHouse2 = HouseType.bigHouse(NumberedHouse(
    number: 1,
    numberOfBedrooms: 1
))

let smallHouse2 = HouseType.smallHouse(NumberedHouse(
    number: 1,
    numberOfBedrooms: 1
))

let allHouses: Set<HouseType> = [
    bigHouse1,
    bigHouse2,
    smallHouse2
]

print(allHouses.count)















