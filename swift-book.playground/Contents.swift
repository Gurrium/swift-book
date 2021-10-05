struct Task {
    var description: String
    var completed: Bool
}
var toDoList = [
    Task(description: "Practice ping-pong.", completed: false),
    Task(description: "Buy a pirate costume.", completed: true),
    Task(description: "Visit Boston in the Fall.", completed: false),
]

func makeIndex() -> Int {
    print("Made an index")
    return Int.random(in: 0...2)
}

let taskKeyPath = \[Task][makeIndex()] // Made an index
let someTask = toDoList[keyPath: taskKeyPath]

extension Array where Element == Task {
    subscript(keyPathGenerator: () -> KeyPath<Array<Element>, Element>) -> Element {
        self[keyPath: keyPathGenerator()]
    }
}

toDoList[makeIndex()]

