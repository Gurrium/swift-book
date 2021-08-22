import Foundation

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

//12345[19]
print(Float(Int.max) < pow(10, 18))
print(Float(Int.max) < pow(10, 19))
