func printPointer(of some: Any) {
    withUnsafePointer(to: some, { print($0) })
}

var str: String? = "Hello, World!!"
let substr = str![..<str!.firstIndex(of: ",")!]

printPointer(of: str)
print(MemoryLayout.size(ofValue: str))
printPointer(of: substr)
print(MemoryLayout.size(ofValue: substr))
str = nil
printPointer(of: str)
print(MemoryLayout.size(ofValue: str))
printPointer(of: substr)
print(MemoryLayout.size(ofValue: substr))
