import Foundation

class Person {
    var name: String
    var age: Int
    
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(
    name: "Foo",
    age: 20
)

foo.increaseAge()
print("\(foo.name) - \(foo.age)")

// reference type
let bar = foo
bar.increaseAge()
print(foo.age)

if foo === bar {
    print("Foo and Bar point to the same memory")
}

class Vehicle {
    func goVroom() {
        print("Vroom vroom")
    }
}

class Car: Vehicle {}

let car = Car()
car.goVroom()

// private set
class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}

let baz = Person2(age: 20)
// error baz.age += 1

class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init (
        model: String
    ) {
        self.init(
            model: model,
            year: 2023
        )
    }
}

class TeslaModelY: Tesla {
    override init() {
       super.init(model: "Y", year: 2023) 
    }
}

let modelY = TeslaModelY()
print(modelY.model)

let fooBar = Person2(age: 20)
func doSomeThing(with person: Person2) {
    person.increaseAge()
}
doSomeThing(with: fooBar)
print(fooBar.age)

class MyClass {
    init() {
        
    }
    func doSomething() {
        
    }
    deinit {
        print("Deinitialized")
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}
myClosure()

























