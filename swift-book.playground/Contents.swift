import Foundation

func pp(_ str: String) {
    print(str, "count: \(str.count), length: \((str as NSString).length)")
}

var cafe = "cafe"
pp(cafe)
cafe.append("\u{301}")
pp(cafe)

var jp = "\u{1f1ef}"
pp(jp)
jp.append("\u{1f1f5}")
pp(jp)

let greeting = "Hello World"
greeting.index(after: greeting.endIndexd)
