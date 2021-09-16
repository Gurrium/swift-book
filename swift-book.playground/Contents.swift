struct Vector2D {
    var x = 0.0, y = 0.0
}

extension Vector2D: CustomDebugStringConvertible {
    var debugDescription: String {
        "(\(x), \(y))"
    }
}

extension Vector2D {
    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
}

extension Vector2D {
    static prefix func - (vector: Vector2D) -> Vector2D {
        return Vector2D(x: -vector.x, y: -vector.y)
    }

    static postfix func -- (vector: Vector2D) -> Vector2D {
        return Vector2D(x: vector.x - 1, y: vector.y - 1)
    }
}
let positive = Vector2D(x: 3.0, y: 4.0)
let negative = -positive
print(negative) // (-3.0, -4.0)
let alsoPositive = -negative
print(positive) // (3.0, 4.0)
let decremented = positive--
print(decremented) // (2.0, 3.0)
