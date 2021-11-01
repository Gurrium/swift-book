class Hoge {}
class Fuga: Hoge {}

print(Fuga.self is Hoge.Type) // true
print(Hoge.self is Hoge.Type) // true

let point = (1, 2)
// Overload the ~= operator to match a string with an integer.
func ~= (pattern: String, value: Int) -> Bool {
    return pattern == "\(value)"
}
switch point {
case ("0", "0"):
    print("(0, 0) is at the origin.")
default:
    print("The point is at (\(point.0), \(point.1)).")
}
// Prints "The point is at (1, 2)."
