class Hoge {
    let hoge: String

    init() {
        hoge = "super hoge"
    }
}

class Fuga: Hoge {
    override init() {
        hoge = "sub hoge" // Cannot assign to property: 'hoge' is a 'let' constant
    }
}
