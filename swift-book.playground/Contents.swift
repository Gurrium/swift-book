struct Soem {
    private var _computed = 0
    private(set) var computed: Int {
        get {
            _computed
        }
        set {
            _computed = newValue
        }
    }
}

Soem().computed
