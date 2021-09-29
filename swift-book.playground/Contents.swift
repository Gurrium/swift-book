func some() throws -> Int {
    3628800 / Int.random(in: 0...10)
}

func other() throws -> Int {
    120 / Int.random(in: 0...5)
}

try! some() + other()
try! (some() + other())
(try! some()) + (try! other())

func otherr() -> Int {
    120 / Int.random(in: 1...5)
}
try? some() + otherr()
