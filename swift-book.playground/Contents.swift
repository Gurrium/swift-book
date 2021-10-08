func some(_ closure: (() -> ())?) {
    closure?()
}

some {
    print("hoge")
}

typealias Callback = (Int) -> Int
func someFunction(firstClosure: Callback? = nil,
                  secondClosure: Callback? = nil) {
    let first = firstClosure?(10)
    let second = secondClosure?(20)
    print(first ?? "-", second ?? "-")
}

someFunction { $0 } // - 20
