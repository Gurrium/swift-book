class HTMLElement {
    let name: String
    let text: String?

    lazy var asHTML: () -> String = {
        [unowned unownedSelf = self, unowned elem = HTMLElement(name: "h3")] in
        if let text = unownedSelf.text {
            return "<\(unownedSelf.name)>\(text)</\(unownedSelf.name)>"
        } else {
            return "<\(unownedSelf.name) />"
        }
    }

    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        print("\(name) is being deinitialized")
    }

}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())
paragraph = nil
