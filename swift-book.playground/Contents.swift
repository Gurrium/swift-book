switch (1, 2) {
// case let (x, y) where x == y, let (x, _) where x == 2: // 'y' must be bound in every pattern
    print(x)
case let (x, _) where x % 3 == 0, let (x, _) where x % 4 == 0:
    print(x)
default:
    break
}
