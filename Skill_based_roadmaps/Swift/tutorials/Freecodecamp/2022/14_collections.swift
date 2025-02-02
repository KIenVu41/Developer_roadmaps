import Foundation

let numbers = [1, 2, 3 ,4]
numbers.first
numbers.last
numbers.count
numbers.map(-)

var mutatingNumbers = [4 ,5 , 6]
mutatingNumbers.append(7)
mutatingNumbers.insert(3, at: 0)
mutatingNumbers.insert(contentsOf: [1, 2], at: 0)
print(mutatingNumbers)

for value in numbers {
    print(value)
}

for value in numbers where value % 2 == 0 {
    print(value)
}

numbers.map {(value: Int) -> Int in
    value * 2
}

numbers.filter { (value: Int) -> Bool in
    value >= 3
}

numbers.compactMap {(value: Int) -> String? in
    value % 2 == 0 ? String(value) : nil
}

let numbers2: [Int?] = [1, 2, nil, 4, 5]
let notNils = numbers2.filter {(value: Int?) -> Bool in 
    value != nil
}

let notNils2 = numbers2.compactMap {(value: Int?) -> Int? in 
    value
}

let stufft1 = [
    1, 
    "Hello",
    2,
    "World"
] as [Any]

let stufft2: [Any] = [
    1, 
    "Hello",
    2,
    "World"
] 



// Set
let uniqueNumbers = Set([1, 2, 1, 2, 3])
print(uniqueNumbers.count)
print(uniqueNumbers.map({(value: Int) -> Int in -value }))


let myNumbers = Set([1, 2, 3, nil, 5])
let notNilNumbers = Set(myNumbers.compactMap {
    $0
})
print(notNilNumbers)

let stuff3: Set<AnyHashable> = [
    1, 2 , 3, "Foo"
]
print(stuff3.count)

let intsInStuff1 = stufft1.compactMap {
    (value: Any) -> Int? in 
    value as? Int
}

print(intsInStuff1)

let stringsInStuff1 = stufft1.compactMap {
    (value: Any) -> String? in 
    value as? String
}

let intsInStuff3 = stuff3.compactMap {
    (value: AnyHashable) -> Int? in 
    value as? Int
}

print(type(of: intsInStuff3))


struct Person: Hashable {
    let id: UUID
    let name: String
    let age: Int
}

let fooId = UUID()
let foo = Person(
    id: fooId,
    name: "Foo",
    age: 19
)
let bar = Person(
    id: fooId,
    name: "Bar",
    age: 20
)

let people: Set<Person> = [foo, bar]
print(people.count)


struct Person2: Hashable {
    let id: UUID
    let name: String
    let age: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.id == rhs.id
    }

}

let bazId = UUID()
let baz = Person2(
    id: bazId,
    name: "Baz",
    age: 19
)
let qux = Person2(
    id: bazId,
    name: "Qux",
    age: 20
)

if baz == qux {
    print("They are same")
}

let people2: Set<Person2> = [baz, qux]
print(people2.count)
print(people2.first!.name)


// Dictionary
let userInfo = [
    "name": "Foo",
    "age": 20,
    "address": [
        "line1": "Address: line 1",
        "postCode": "12345"
    ]
] as [String: Any]
print(userInfo["name"])
print(userInfo["address"])

print(userInfo.keys)
print(userInfo.values)

for (key, value) in userInfo {
    print(key)
    print(value)
}

for (key, value) in userInfo where value is Int {
    print(key)
    print(value)
}

for (key, value) in userInfo where value is Int && key.count > 2 {
    print(key)
    print(value)
}



