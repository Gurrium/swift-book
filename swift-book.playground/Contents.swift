struct Hoge {
    let nonOptional: String
    let optional: String?
}

let hoge: Hoge? = Hoge(nonOptional: "some", optional: nil)
print(type(of: hoge?.nonOptional)) // Optional<String>
print(type(of: hoge?.optional)) // Optional<String>
