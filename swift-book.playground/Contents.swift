import Foundation
import _Concurrency

protocol HogeRequirements {
    var hoge: String { get }
}

actor Hoge: HogeRequirements {
    let hoge: String

    init(_ hoge: String) {
        self.hoge = hoge
    }

    convenience init() {
        self.init("hoge")
    }
}

extension Hoge {
    func debug() {
        print("[Hoge] hoge:", hoge)
    }
}

Task {
    let hoge = Hoge()
    print(hoge.hoge)
    print(await hoge.debug())
}
