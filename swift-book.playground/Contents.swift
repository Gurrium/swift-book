struct Hoge: CustomStringConvertible {
    var description: String = "hoge"
}
let arr: [CustomStringConvertible] = [1, 1.0, "a", Hoge()]
for e in arr {
    print(e)
}
