struct DummyError: Error {}

let closureCanThrow = {
    defer {
        print("first defer")
    }

    defer {
        print("second defer")
    }
    if Bool.random() {
        print("throws DummyError")
        throw DummyError()
    }

    print("not thrown")
}

for i in 1...4 {
    print(i)
    try? closureCanThrow()
}

// 1
// throws DummyError
// second defer
// first defer
// 2
// throws DummyError
// second defer
// first defer
// 3
// not thrown
// second defer
// first defer
// 4
// not thrown
// second defer
// first defer
