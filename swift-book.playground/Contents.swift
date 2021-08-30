import Foundation

protocol Hoge {
    associatedtype FirstConstrationType
    associatedtype SecondConstrationType

    func plint()
}

extension Hoge where FirstConstrationType == String {
    func plint() {
        print("only first")
    }
}

extension Hoge where FirstConstrationType == String, SecondConstrationType == String {
    func plint() {
        print("first and second")
    }
}

struct Impl: Hoge {
    typealias FirstConstrationType = String
    typealias SecondConstrationType = String
}

Impl().plint()
