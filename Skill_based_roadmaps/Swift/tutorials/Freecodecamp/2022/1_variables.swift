import Foundation

let myName = "Kevin"
let yourName = "Foo"

//myName = yourName // cannot assign to value: 'myName' is a 'let' constant

var names = [
    myName,
    yourName
]

names.append("Bar")
print(names)

let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
print(foo) // foo

let moreNames = [
    "Foo",
    "Bar"
]

var copy = moreNames
copy.append("Baz")
print(moreNames)
print(copy) // not affect the original data which it was assigned to

let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

oldArray.add("Baz")
print(oldArray)
var newArray = oldArray
newArray.add("Qux") 

let someNames2 = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("Baz")
}
changeTheArray(someNames2)
/* 
 if u assigned a class to a let constant, the class might
 internally change
*/

