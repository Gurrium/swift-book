let a = false
//print(a!)
print(-5 % 3)

(1, 2) < (2, 1)

func lt<T: Comparable, U: Comparable>(_ lhs: (T, U), _ rhs: (T, U)) -> Bool {
    if lhs.0 != rhs.0 {
        return lhs.0 < rhs.0
    } else {
        return lhs.1 < rhs.1
    }
}

assert(((1, 1) < (2, 2)) == lt((1, 1), (2, 2)))
assert(((1, 2) < (2, 1)) == lt((1, 2), (2, 1)))
assert(((2, 1) < (1, 2)) == lt((2, 1), (1, 2)))
assert(((2, 2) < (1, 1)) == lt((2, 2), (1, 1)))
