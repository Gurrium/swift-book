let names: [String] = ["fuga", "hoge", "piyo"]
let checker = { (_ seman: [String]) in assert(names.reversed().elementsEqual(seman)) }

checker(names.sorted(by: { (s0: String, s1: String) -> Bool in return s0 > s1 }))
checker(names.sorted(by: { s0, s1 in return s0 > s1 }))
checker(names.sorted(by: { s0, s1 in s0 > s1 }))
checker(names.sorted(by: { $0 > $1 }))
checker(names.sorted(by: >))
