let arr: [Any] = ["hoge", 1]

print(type(of: arr[0]), type(of: arr.first), type(of: arr.first!)) // String Optional<Any> String

class Sup {
    func f() -> Self { self }
    func g() -> String { "Sup" }
}

class Sub: Sup {
    override func g() -> String { "Sub" }
}

let sub: Sup = Sub()
print(type(of: sub.f())) // Sub
print(sub.g()) // Sub
