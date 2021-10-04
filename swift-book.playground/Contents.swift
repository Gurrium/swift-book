import Foundation

let tup = (a: 1, (a: 2, b: 1), (b: 2, c: 3))
print(tup) // (a: 1, (a: 2, b: 1), (b: 2, c: 3))

print(["a": 0, "b": 1].merging(["a": 1, "b": 2]) { l, _ in l }) // ["a": 0, "b": 1]
//print(["a": 0, "b": 1].merging(["a": 1, "b": 2]) { $0 }) // Contextual closure type '(Int, Int) throws -> Int' expects 2 arguments, but 1 was used in closure body
print(["a": 0, "b": 1].merging(["a": 1, "b": 2]) { ($0, $1).0 }) // ["b": 1, "a": 0]
