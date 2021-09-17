infix operator **: MechakuchaTsuyoiPrecedence
precedencegroup MechakuchaTsuyoiPrecedence {
    higherThan: MultiplicationPrecedence
    associativity: left
}

import Foundation
extension Int {
    static func ** (left: Int, right: Int) -> Int {
        Int(pow(Double(left), Double(right)))
    }
}

print(4 ** 8 * 2, "=", Int(pow(4.0, 8.0)) * 2, "≠", Int(pow(4.0, 8.0 * 2.0)))
