struct Hoge: Hashable {}

let dict: [Hoge: String] = [.init(): "aaa"]
print(dict.keys, dict.values)
