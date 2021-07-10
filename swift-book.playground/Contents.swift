struct Cup {
    var content: String {
        willSet {
            print("willSet:", newValue)
        }
        didSet {
            print("didSet:", content)
        }
    }
}

func replace(_ newContet: String, from oldContent: inout String) {
    print("before pouring")
    oldContent = newContet
    print("after pouring")
}

func doNothing(_ content: inout String) {}

var coffeeCup = Cup(content: "")
print("call replace")
replace("coffee", from: &(coffeeCup.content))
print("call doNothing")
doNothing(&(coffeeCup.content))
// => call replace
// => before pouring
// => after pouring
// => willSet: coffee
// => didSet: coffee
// => call doNothing
// => willSet: coffee
// => didSet: coffee
