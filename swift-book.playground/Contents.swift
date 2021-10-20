protocol SomeProtocol {
    static var someValue: Self { get }
    static func someFunction(x: Int) -> Self
}
enum MyEnum: SomeProtocol {
    case someValue
    case someFunction(x: Int)
}
let someProtocol: SomeProtocol = MyEnum.someValue
print(type(of: someProtocol).someValue) // someValue
