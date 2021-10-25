precedencegroup SomePrecedence {
    higherThan: AdditionPrecedence
    lowerThan: MultiplicationPrecedence
    associativity: left
    assignment: true
}

precedencegroup OtherPrecedence {
    higherThan: AdditionPrecedence
    lowerThan: MultiplicationPrecedence
    associativity: left
    assignment: false
}

infix operator ++=: SomePrecedence
infix operator --=: OtherPrecedence

extension Int {
    static func ++=(lhs: inout Int, rhs: Int) {
        lhs += rhs
    }

    static func --=(lhs: inout Int, rhs: Int) {
        lhs -= rhs
    }
}

struct Some {
    var num = 5
}

var some: Some? = Some()
print("#1")
some?.num ++= 1
print("#2")
some?.num --= 1 // Cannot convert value of type 'Int?' to expected argument type 'Int'
print("#3")
some!.num ++= 1
print("#4")
some!.num --= 1
