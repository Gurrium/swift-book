import UIKit

class Cls {
    init() {
        let someButton = UIButton()
        someButton.target(forAction: #selector(tapSomeButton), withSender: nil)
        let otherButton = UIButton()
        otherButton.target(forAction: #selector(tapOtherButton), withSender: nil)
    }
}

@objc extension Cls {
    func tapSomeButton() {}
    func tapOtherButton() {}
}
