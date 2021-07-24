struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()

    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)

        origin = Point(x: originX, y: originY)
        self.size = size
    }
}

struct AnotherRect {
    var origin = Point()
    var size = Size()
}

extension AnotherRect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

//print(Rect().origin) // Missing arguments for parameters 'center', 'size' in call
print(AnotherRect().origin)
