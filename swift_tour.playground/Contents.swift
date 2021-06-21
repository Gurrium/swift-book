var conditions: [[Bool]] = []

for i in 0b000...0b111 {
    conditions.append([
        (i >> 2) & 0b001 == 1,
        (i >> 1) & 0b001 == 1,
        (i >> 0) & 0b001 == 1,
    ])
}

for condition in conditions {
    print(condition)
    print(echo(condition[0]) || echo(condition[1]) && echo(condition[2]))
}

func echo(_ some: Bool) -> Bool {
    print("called echo with: \(some)")
    return some
}
