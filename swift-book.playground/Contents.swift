struct Some {
    func someFunc(_: () -> Void) {}

    // Invalid redeclaration of 'someFunc()'
    // func someFunc(_: () -> Void) throws {}

    // 引数の型が違うのでオーバーロードできる
    func someFunc(_: () throws -> Void) {}
}

func neverReturn() -> Never {
    fatalError()
}
let never: Never
never = neverReturn()
print(never)
