struct Hoge {
    @inlinable
    func hoge() {
        print(Fuga().someInternal(), Piyo().otherInternal())
    }
}

struct Fuga {
    internal func someInternal() -> String {
        "some"
    }
}

struct Piyo {
    @usableFromInline
    internal func otherInternal() -> String {
        "other"
    }
}
Hoge().hoge()
