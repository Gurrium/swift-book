class Sup {
    var prop = 0

    subscript(_ i: Int) -> Int {
        return i * 2
    }

    func meth() {
        print("meth")
    }

    init() {}
}

class Sub: Sup {
    override init() {
        super.init()
        print(super[1])
        print(super.prop)
        super.meth()
    }
}

Sub()
// 2
// 0
// meth
