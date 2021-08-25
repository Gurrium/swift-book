protocol SomeDelegate: AnyObject {
    var some: String { get }
}

// Non-class type 'Kome' cannot conform to class protocol 'SomeDelegate'
// struct Kome: Some {}

class Yome: SomeDelegate {
    var some = "somep"
}

class Hoge {
    var delegate: SomeDelegate?

    init() {}
}
Hoge()

protocol AnyDelegate: SomeDelegate {}
