class Wrapped {
    let num: Int

    init?(_ numString: String) {
        if let converted = Int(numString) {
            num = converted
        }

        return nil
    }
}

class Unwrapped {
    let num: Int

    init!(_ numString: String) {
        if let converted = Int(numString) {
            num = converted
        } else {
            num = 0
        }
    }
}

// unwrapが必要
print(Wrapped("NaN")?.num) // nil
// unwrapが不要
print(Unwrapped("NaN").num) // 0
