class Ownee {
    init() {
        print("Ownee is initialized")
    }

    deinit {
        print("Ownee is deinitialized")
    }
}
struct Owner {
    weak var ownee: Ownee? {
        didSet {
            print("ownee is set to", ownee ?? "nil")
        }
    }
}

var ownee: Ownee? = Ownee()
var owner = Owner()
owner.ownee = ownee
ownee = nil
print("owner.ownee is", owner.ownee ?? "nil")

