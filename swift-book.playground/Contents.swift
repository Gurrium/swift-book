struct SomeSpecialID: Equatable, ExpressibleByStringLiteral {
    let value: String

    init(stringLiteral value: String) {
        self.value = value
    }
}

enum Other: SomeSpecialID {
    case a, b, c
}
print(Other.a.rawValue)
