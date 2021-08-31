struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

extension Stack {
    func peek() -> Element? {
        items.isEmpty ? nil : items[items.count - 1]
    }
}

var intStack = Stack<Int>()
intStack.push(3)
intStack.push(5)
intStack.push(1)
intStack.push(8)
if let topMost = intStack.peek() {
    print(topMost)
}
