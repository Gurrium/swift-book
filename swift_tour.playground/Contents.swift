//let longString = """
//    hoge
//    fuga
//      piyo
//"""
//print(longString)
//
//var n = 2
//while n < 100 {
//    n *= 2
//}
//print(n)
//
//repeat {
//    n *= 2
//} while n < 100
//print(n)
//
//func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//
//    for score in scores {
//        if score > max {
//            max = score
//        } else if score < min {
//            min = score
//        }
//        sum += score
//    }
//
//    return (min, max, sum)
//}
//let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
//print(statistics.sum)
//// Prints "120"
//print(statistics.2)
//// Prints "120"
//
//
//func makeIncrementer() -> ((Int) -> Int) {
//    func addOne(number: Int) -> Int {
//        return 1 + number
//    }
//    return addOne
//}
//var increment = makeIncrementer()
//increment(7)
//
//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item) {
//            return true
//        }
//    }
//    return false
//}
//func lessThanTen(number: Int) -> Bool {
//    return number < 10
//}
//var numbers = [20, 19, 7, 12]
//hasAnyMatches(list: numbers, condition: lessThanTen)
//
//var hoge: () -> Void = {
//    print("from hoge")
//}
//hoge()

//class NamedShape {
//    var numberOfSides: Int = 0
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}
//
//class EquilateralTriangle: NamedShape {
//    var sideLength: Double = 0.0
//
//    init(sideLength: Double, name: String) {
//        self.sideLength = sideLength
//        super.init(name: name)
//        self.perimeter = 33
//        numberOfSides = 3
//    }
//
//    func setSideLength() {
//        perimeter = 99.9
//    }
//
//    var perimeter: Double {
//        get {
//            print("get")
//            return 3.0 * sideLength
//        }
//        set {
//            print("set \(newValue)")
//            sideLength = newValue / 3.0
//        }
//    }
//
//    override func simpleDescription() -> String {
//        return "An equilateral triangle with sides of length \(sideLength)."
//    }
//}
//var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
//print(triangle.perimeter)
//// Prints "9.3"
//triangle.perimeter = 9.9
//print(triangle.sideLength)
//// Prints "3.3000000000000003"
//
//triangle.setSideLength()


class Hoge {
    var hoge: String = "hoge" {
        willSet {
            print("willSet called")
        }
        didSet {
            print("didSet called")
        }
    }

    init() {
        print("init called")
        print("hoge = \(hoge)")
        hoge = "hoge"

        print("init ended")
    }

    func setHoge() {
        print("setVars called")

        hoge = "hoge"

        print("setVars ended")
    }
}

let hoge = Hoge()
hoge.setHoge()
hoge.hoge = "hoge"
