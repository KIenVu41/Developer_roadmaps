import Foundation

let myName = "Kevin"
let myAge = 25
let yourName = "Foo"
let yourAge = 20

if myName == "kevin" {
    "Your name is \(myName)"
} else {
    "I guessed it wrong"
}

if myName == "Kevin" {
    "I guessed it correctly"
} else if myName == "Foo" {
    "Are you foo?"
} else {
    "Okay i give up"
}

if myName == "Kevin" && myAge == 25 {
    "Name is Kevin and age is 25"
} else if myAge == 20 {
    "I only guessed the age right"
} else {
    "I dont know that im doing"
}

if myAge == 20 || myName == "Foo" {
    "Either age is 20, name is Foo or both"
}










