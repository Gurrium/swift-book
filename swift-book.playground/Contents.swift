class Some {
    static let a = "a"
    let b = "b"
}
class Sub: Some {
    static let shared = Sub()
    func f() -> Some { Some() }
}
let x: Some? = Sub().f()
let y: Some = Sub.shared
