func chooseStepFunction(backward: Bool) -> (Int, Any) -> Int {
    func stepForward(input: Int, ignoring: Any) -> Int { return input + 1 }
    func stepBackward(input: Int, ignoring this: Any) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentValue = 10
for _ in 0..<100 {
    currentValue = chooseStepFunction(backward: currentValue > 0)(currentValue, 0)
    print(currentValue)
}
