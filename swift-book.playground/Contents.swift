import Foundation

class Cls {
    func someFunc(param: String) {
        print(param)
    }

    func otherFunc() {
        DispatchQueue.main.async { [someFunc] in
            someFunc("hoge")
        }
    }
}
