struct CallableStruct {
    var value: Int
    func callAsFunction(_ number: Int, scale: Int) {
        print(scale * (number + value))
    }
    func callAsFunction() {
        print("nothing")
    }
}

let callable = CallableStruct(value: 1)
callable(2, scale: 3)
callable()
callable.callAsFunction(2, scale: 3)
callable.callAsFunction()

var closure: ((T) -> Void)?
