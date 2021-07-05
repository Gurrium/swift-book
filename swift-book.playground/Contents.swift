enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
print(evaluate(product))

indirect enum BinTree {
    case inner(left: BinTree, right: BinTree, value: Int)
    case leaf(value: Int)
}

func inOrderTraverse(_ tree: BinTree) {
    switch tree {
    case let .inner(left, right, value):
        inOrderTraverse(left)
        print(value)
        inOrderTraverse(right)
    case let .leaf(value):
        print(value)
    }
}

let tree = BinTree.inner(
    left: .inner(
        left: .leaf(value: 0),
        right: .inner(
            left: .leaf(value: 2),
            right: .leaf(value: 4),
            value: 3),
        value: 1),
    right: .leaf(value: 6),
    value: 5)

inOrderTraverse(tree)
// =>
// 0
// 1
// 2
// 3
// 4
// 5
// 6
