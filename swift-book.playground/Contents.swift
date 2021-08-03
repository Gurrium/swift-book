class Sup {
    deinit {
        print("deinit Sup")
    }
}

class Sub: Sup {}

class SubSub: Sub {
    deinit {
        print("deinit SubSub")
    }
}

SubSub()

// deinit SubSub
// deinit Sup
