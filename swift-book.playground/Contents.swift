func check(_ actual: [String]) {
    var expected: [String] = []
    for i in 1...100 {
        let tmp: String = {
            if i % 3 == 0 {
                return i % 5 == 0 ? "fizzbuzz" : "fizz"
            }else  if i % 5 == 0 {
                return "buzz"
            } else {
                return "\(i)"
            }
        }()
        expected.append(tmp)
    }

    for (e, a) in zip(expected, actual) {
        print(e, a, separator: " ")
    }

    assert(expected.elementsEqual(actual))
}

//let actual = (1...100).map {"\($0 % 3 == 0 ? "fizz" : ($0 % 5 != 0 ? "\($0)" : ""))\($0 % 5 == 0 ? "buzz" : "")" }
let actual = (1...100).map{($0 % 3==0 ?"fizz":($0 % 5==0 ?"":"\($0)"))+($0 % 5==0 ?"buzz":"")}
//let actual = (1...100).map {"\($0 % 3 == 0 ? "fizz" : ($0 % 5 != 0 ? "\($0)" : ""))\($0 % 5 == 0 ? "buzz" : "")" }

check(actual)
