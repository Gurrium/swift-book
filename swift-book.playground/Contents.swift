import Foundation

class Cls {
    subscript(arg param: Int) -> Int {
        return param * 2
    }
}
Cls()[arg: 1]

actor SomeActor {
    var arr = [Int]()

    subscript(_ index: Int) -> Int{
        get {
            Thread.sleep(forTimeInterval: 0.5)

            return arr[index]
        }

        set {
            arr[index] = newValue
        }
    }
}

let some = SomeActor()
Task {
    some[0] = 0 // Actor-isolated subscript 'subscript(_:)' can not be mutated from a non-isolated context
    some.arr.append(0) // Actor-isolated property 'arr' can not be mutated from a non-isolated context
    print(await some[0])
}
