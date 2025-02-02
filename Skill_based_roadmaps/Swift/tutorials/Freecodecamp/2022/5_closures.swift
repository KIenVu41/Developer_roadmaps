import Foundation

// func add(_ lhs: Int,_ rhs: Int) -> Int {
//     lhs + rhs
// }

let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in 
    lhs + rhs
    }
    
print(add(2 , 3))

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int) -> Int {
    function(lhs, rhs)
} 

print(customAdd(2, 3, using: {
    (lhs: Int, rhs: Int) -> Int in 
        lhs + rhs
    }
))

// trailing closure syntax
customAdd(
    2,
    3
) {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

customAdd(
    2,
    3
) {
    (lhs, rhs) in
    lhs + rhs
}

customAdd(2, 3) {
    $0 + $1
}


let ages = [30, 20, 19, 40]
let sortedAges = ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs > rhs
}) // descending

ages.sorted(by: <)

func customAdd2(
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int 
) -> Int {
    function(lhs, rhs)
} 

print(customAdd2(
    using: {
    (lhs, rhs) in 
        lhs + rhs
    }, 3, 3))
    
func add10To(_ value: Int) -> Int {
    value + 10
}

func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

print(doAddition(
    on: 20,
    using: add10To(_:)    
))




















