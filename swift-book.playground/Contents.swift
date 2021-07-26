class Sup {
    let str: String

    init(_ str: String) {
        self.str = str
    }

    convenience init(isHoge: Bool) {
        self.init(isHoge ? "hoge" : "")
    }
}

class Sub: Sup {
    init() {
        super.init("str")
    }
}

print(Sub("str").str)
print(Sub(isHoge: true).str)
