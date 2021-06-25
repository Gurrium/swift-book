func printPointer(of some: Any) {
    withUnsafePointer(to: some, { print($0) })
}

var str: String? = "Hello, World!!"
let substr = str![..<str!.firstIndex(of: ",")!]

printPointer(of: str)
printPointer(of: substr)
str = nil
printPointer(of: str)
printPointer(of: substr)
