import Foundation

func noArgumentsAndNoReturnValue() {
    print("Hello World")
}
noArgumentsAndNoReturnValue()

func plusTwo(value: Int) {
    let newValue = value + 2
}

func newPlusTwo(value: Int) -> Int {
    value + 2
}

func customAdd(value1 : Int, value2: Int) -> Int {
    value1 + value2
}

func customMinus(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}

// underscore: ignore external name of arguments
let customSuctracted = customMinus(20, 10)

@discardableResult
func myCustomAdd(_ lhs: Int, _ rhs: Int) -> Int {
    rhs + lhs
}

func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value + 3)
}
doSomethingComplicated(with: 3)

func getFullName(firstName: String = "Foo", lastName: String = "Bar") -> String {
    "\(firstName) \(lastName)"
}
