protocol P {
    associatedtype T
    var prop: Int { get }
}

protocol Q {
    var prop: Int { get }
}

protocol R {
    var prop: Int { get }
}

struct S: P, Q, R {
    typealias T = Self
    var prop = 0
}

extension Array {
    // 1
    func some() where Element: P {
        print(1)
    }

    // 2
//    func some() where Element: P & Q {
//        print(2)
//    }
//
//    // 3
//    func some() where Element: P & R {
//        print(3)
//    }

    // 4
    func some() where Element: P, Element.T == S {
        print(4)
    }
}

[S()].some()
// 1と2のとき
// 2

// 1と4のとき
// 4

// 2, 3のとき
// Ambiguous use of 'some()'

// 2, 4のとき
// Ambiguous use of 'some()'
