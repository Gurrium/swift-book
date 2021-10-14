struct Some {
    var stored = "stored"
    var computed: String {
        "computed"
    }
}
let some = Some()

print(some.stored, some.computed, separator: ", ") // stored, computed
