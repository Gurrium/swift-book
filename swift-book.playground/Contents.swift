class Sup {
    var name: String?

    init() {}

    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

class Sub: Sup {
    // Failable initializer 'init()' cannot override a non-failable initializer
//    override init?() {
//        return nil
//    }

    override init(name: String) {
        super.init(name: "empty")!
    }
}

print(Sup(name: "")?.name)
print(Sub(name: "").name)

// nil
// Optional("empty")
