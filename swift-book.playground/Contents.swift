class Super {
    var superProp: String

    init?(_ str: String) {
        if str.isEmpty {
            return nil
        }

        superProp = str
    }
}

class Sub: Super {
    var prop: String

    init?() {
        prop = "hoge"

        super.init("")
    }

    convenience init?(isHoge: Bool) {
        self.init()
    }
}

print(Sub()) // nil
print(Sub(isHoge: false)) // nil
