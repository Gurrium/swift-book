func printPointer(of some: Any) {
    withUnsafePointer(to: some, { print($0) })
}

var str: String? = "Hello, World!!"
var substr: Substring? = str![..<str!.firstIndex(of: ",")!]

print("---")
print("str: \(str)")
printPointer(of: str)
print(MemoryLayout.size(ofValue: str))
print("substr: \(substr)")
printPointer(of: substr)
print(MemoryLayout.size(ofValue: substr))

str = nil
print("---")
print("str: \(str)")
printPointer(of: str)
print(MemoryLayout.size(ofValue: str))
print("substr: \(substr)")
printPointer(of: substr)
print(MemoryLayout.size(ofValue: substr))

substr = nil
print("---")
print("str: \(str)")
printPointer(of: str)
print(MemoryLayout.size(ofValue: str))
print("substr: \(substr)")
printPointer(of: substr)
print(MemoryLayout.size(ofValue: substr))

