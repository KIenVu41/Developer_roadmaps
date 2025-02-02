import Foundation

let myAge = 25
let yourAge = 20

if myAge > yourAge {
    "I'm older than you"
} else if myAge < yourAge {
    "Im younger than you"
} else {
    "We are the same age"
}

let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2

// 1. unary prefix
let foo = !true
// 2. unary posfix
let name = Optional("Kevin")
let unaryPostFix = name!
// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"

// ternany operator
let age = 30
let message: String = age >= 18 
    ? "You are an adult" 
    : "You are not yet an adult"
    



