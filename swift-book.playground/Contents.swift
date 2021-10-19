//protocol Prot {
//    var prop: Int { get set }
//}
//
//class Cls: Prot {
//    var prop = 0
//}
//struct Strct: Prot {
//    var prop = 0
//}
//
//let cls: Cls = Cls()
//let strct: Strct = Strct()
//cls.prop = 1
//strct.prop = 1 // Cannot assign to property: 'strct' is a 'let' constant
//
//let prot: Prot = Cls()
//prot.prop = 1 // Cannot assign to property: 'prot' is a 'let' constant

protocol Prot: AnyObject {
    var prop: Int { get set }
}

class Cls: Prot {
    var prop = 0
}
// Non-class type 'Strct' cannot conform to class protocol 'Prot'
//struct Strct: Prot {
//    var prop = 0
//}

let cls: Cls = Cls()
cls.prop = 1

let prot: Prot = Cls()
prot.prop = 1

//class Cls {
//    private let prot: Prot
//
//    init(prot: Prot) {
//        self.prot = prot
//    }
//
//    func fnc() {
//        prot.prop = 2 // Cannot assign to property: 'prot' is a 'let' constant
//    }
//}
//
//protocol Prot {
//    var prop: Int { get set }
//}
//class ProtImpl: Prot {
//    var prop = 0
//}
//Cls(prot: ProtImpl())
//

