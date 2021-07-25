class Sup {
    let str: String

    init() {
        print("Sup init")
        str = "str"
    }
}

class Sub: Sup {
    init(str: String) {
        print("Sub init", str)
    }

    convenience override init() {
        print("Sub convenience init")
        self.init(str: "some")
    }
}

Sub().str
print("---")
Sub(str: "some")
// Sub convenience init
// Sub init some
// Sup init
// ---
// Sub init some
// Sup init
