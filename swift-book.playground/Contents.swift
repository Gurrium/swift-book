var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

print("SomeClass")
class SomeClass {
    var x = 10
    func doSomething() {
        print(x) // => 10
        someFunctionWithEscapingClosure { self.x = 100 } // (1)
        someFunctionWithEscapingClosure { [self] in x = 200 } // (2)
        completionHandlers.forEach { closure in
            closure()
            print(x)
        }
        // => 100
        // => 200
    }
}
SomeClass().doSomething()

print("SomeStruct")
struct SomeStruct {
    var x = 10
    mutating func doSomething() {
        print(x) // => 10
        someFunctionWithNonescapingClosure { x = 200 }  // (3)
        print(x) // => 200
        // someFunctionWithEscapingClosure { x = 100 }  // (4)
    }
}
var some = SomeStruct()
some.doSomething()
