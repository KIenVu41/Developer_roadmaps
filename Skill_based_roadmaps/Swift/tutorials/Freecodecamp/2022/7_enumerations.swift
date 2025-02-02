import Foundation

enum Animals {
    case cat 
    case dog 
    case rabbit 
    // or: case cat, dog, rabbit
}

let cat = Animals.cat
print(cat)

if cat == Animals.cat {
    print("Its a cat")
}

switch cat {
    case Animals.cat:
        print("This is a cat")
        break
    case .dog:
        print("This is a dog")
        break
    case .rabbit:
        print("This is a rabbit")
        break
    default:
        print("This is something else")
}

// Associated values
enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

switch wwwApple {
    case .fileOrFolder(
        let path,
        let name
    ):
        print("\(path)_\(name)")
        break
    case .wwwUrl(
        let path
    ):
        print(path)
        break
    case .song(
        let artist,
        let songName
    ):
        print("\(artist)_\(songName)")
        break
}

switch wwwApple {
    case let .fileOrFolder(
        path,
        name
    ):
        print("\(path)_\(name)")
        break
    case let .wwwUrl(
        path
    ):
        print(path)
        break
    case let .song(
        artist,
        songName
    ):
        print("\(artist)_\(songName)")
        break
}

if case let .wwwUrl(path) = wwwApple {
    print(path)
}

let withoutYou = Shortcut.song(
    artist: "Symphony X",
    songName: "without You"
)

if case let .song(_, songName) = withoutYou {
    print(songName)
}


enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    func getManufacturer() -> String {
        switch self {
            case let .car(manufacturer, _),
            let .bike(manufacturer, _):
                return manufacturer
        }
    }
    
    /*var getManufacturer: String {
        switch self {
            case let .car(manufacturer, _):
                return manufacturer
            case let .bike(manufacturer, _):
                return manufacturer
        }
    }*/
}

let car = Vehicle.car(
    manufacturer: "Tesla",
    model: "X"
)

car.getManufacturer()

enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case blush = "a"
    case rocket = "b"
    case fire = "c"
}

print(FavoriteEmoji.allCases)
print(FavoriteEmoji.allCases.map(\.rawValue))

if let blush = FavoriteEmoji(rawValue: "a") {
    print("Fount the blush emoji")
    blush
} 


enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
print(myHeight)

// recursive enumerations
indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateResult(
        of operation: IntOperation? = nil
    ) {
        switch operation ?? self {
            case let .add(lhs, rhs):
                return lhs + rhs
            case let .subtract(lhs, rhs):
                return lhs - rhs
            case let .freehand(operation):
                return calculateResult(of: operation)
        }
    }
}

let freehand = IntOperation.freehand(.add(2, 4))
freehand.calculateResult()















