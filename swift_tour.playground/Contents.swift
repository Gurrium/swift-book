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


//class Hoge {
//    var hoge: String = "hoge" {
//        willSet {
//            print("willSet called")
//        }
//        didSet {
//            print("didSet called")
//        }
//    }
//
//    init() {
//        print("init called")
//        print("hoge = \(hoge)")
//        hoge = "hoge"
//
//        print("init ended")
//    }
//
//    func setHoge() {
//        print("setVars called")
//
//        hoge = "hoge"
//
//        print("setVars ended")
//    }
//}
//
//let hoge = Hoge()
//hoge.setHoge()
//hoge.hoge = "hoge"

//enum ServerResponse {
//    case result(String, String)
//    case failure(String)
//}
//
//let success = ServerResponse.result("6:00 am", "8:09 pm")
//let failure = ServerResponse.failure("Out of cheese.")
//
//switch success {
//case let .result(sunrise, sunset):
//    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
//case let .failure(message):
//    print("Failure...  \(message)")
//}
//// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."

//enum Rank: Int, CaseIterable {
//    case ace = 1
//    case two, three, four, five, six, seven, eight, nine, ten
//    case jack, queen, king
//
//    func simpleDescription() -> String {
//        switch self {
//        case .ace:
//            return "ace"
//        case .jack:
//            return "jack"
//        case .queen:
//            return "queen"
//        case .king:
//            return "king"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//
//enum Suit: CaseIterable {
//    case spades, hearts, diamonds, clubs
//
//    func simpleDescription() -> String {
//        switch self {
//        case .spades:
//            return "spades"
//        case .hearts:
//            return "hearts"
//        case .diamonds:
//            return "diamonds"
//        case .clubs:
//            return "clubs"
//        }
//    }
//}
//
//struct Card {
//    var rank: Rank
//    var suit: Suit
//
//    func simpleDescription() -> String {
//        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
//    }
//}
//
//func createDeck() -> [Card] {
//    var ret: [Card] = []
//    Rank.allCases.forEach { rank in
//        Suit.allCases.forEach { suit in
//            ret.append(.init(rank: rank, suit: suit))
//        }
//    }
//
//    return ret
//}
//
//createDeck()
//
////Rank.AllCases
//Rank.allCases
//Rank.ace.rawValue
//Suit.spades

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print("third")
    print(error)
}
// Prints "Job sent"
