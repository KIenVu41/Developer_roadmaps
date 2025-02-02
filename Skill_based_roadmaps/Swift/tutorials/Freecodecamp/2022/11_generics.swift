import Foundation

func perform<N: Numeric>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N {
    op(lhs, rhs)
}

let x = perform(+, on: 10.1, and: 20)
print(x)

func perform2<N>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N where N: Numeric {
    op(lhs, rhs)
}

protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        print("Jumping...")
    }
    
    func run() {
        print("Running...")
    }
}

func jumpAndRun<T: CanJump & CanRun>(_ value: T) {
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(person)


// old syntax: extension Array where Element == String
extension [String] {
    func longestString() -> String? {
        self.sorted {(lhs: String, rhs: String) -> Bool in
            lhs.count > rhs.count
        }.first
    }
}

let names = ["Foo", "Bar Bax", "Qux"]
print("longest \(names.longestString())")


protocol PresentabletAsView {
    associatedtype ViewType: View
    func produceView() -> ViewType
    func configure(
        superView: View,
        thisView: ViewType
    )
    func present(
        view: ViewType,
        on superView: View
    )
}

extension PresentabletAsView {
    func configure(
        superView: View,
        thisView: ViewType
    ) {
        
    }
    func present(
        view: ViewType,
        on superView: View
    ) {
        superView.addSubView(view)
    }
}

struct MyButton: PresentabletAsView {
    func produceView() -> Button {
        Button()
    }
}

extension PresentabletAsView where ViewType == Button {
    func doSomethingWithButton() {
        "THis is a button"
    }
}

let button = MyButton()
button.doSomethingWithButton()