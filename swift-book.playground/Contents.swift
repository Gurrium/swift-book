import Foundation

struct SomeSequence: Sequence {
    func makeIterator() -> some IteratorProtocol {
        return SomeIterator()
    }
}

struct SomeIterator: IteratorProtocol {
    private var _limit = 5

    mutating func next() -> Bool? {
        if _limit < 0 {
            return nil
        } else {
            _limit -= 1
            return Bool.random()
        }
    }
}


for i in SomeSequence() {
    print(i)
}
