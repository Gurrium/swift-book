import SwiftUI

struct SomeView: View {
    var body: some View {
        Rectangle()
            .padding([.top, .bottom])
            .foregroundColor(.blue)
        Rectangle()
            .padding(.top)
            .padding(.bottom)
            .foregroundColor(.red)
    }
}
SomeView()
//
//enum Custom {
//    enum Edge {
//        typealias Set = [Element]
//
//        struct Element {
//            static let top = Self("top")
//            static let bottom = Self("bottom")
//
//            let kind: String
//            init(_ kind: String) {
//                self.kind = kind
//            }
//        }
//    }
//}
//
//extension Array where Element == Custom.Edge.Element {
//    static let top = [Element("top")]
//    static let bottom = [Element("bottom")]
//}
//
//func some(_ set: Custom.Edge.Set) {
//    print(set)
//}
//
//some(.top)
//some([.top, .bottom])
//some([.top, [[.bottom]]]) // error

enum Custom {
    enum Edge {
        struct Set: ExpressibleByArrayLiteral {
            typealias ArrayLiteralElement = Self

            let rawValue: Int

            static let top = Self(rawValue: 1 << 0)
            static let bottom = Self(rawValue: 1 << 1)

            init(rawValue: Int) {
                self.rawValue = rawValue
            }

            init(arrayLiteral elements: Custom.Edge.Set...) {
                rawValue = elements.reduce(0) { $0 | $1.rawValue }
            }
        }
    }
}

func some(_ set: Custom.Edge.Set) {
    print(set)
}

some(.top)
some([.top, .bottom])
some([.top, [[.bottom]]])
