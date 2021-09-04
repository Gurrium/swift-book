protocol Shape {
    func draw() -> String
}

struct Triangle: Shape {
    func draw() -> String {
        return """
            *
            **
            ***
            """
    }
}

let body = {
    Triangle()
}

func makeTriangle() -> some Shape {
    body()
}

func protoMakeTriangle() -> Shape {
    body()
}


let triangle = makeTriangle()
print(triangle.draw())
// *
// **
// ***
let protoTriangle = protoMakeTriangle()
print(protoTriangle.draw())
// *
// **
// ***

func flip<T: Shape>(_ shape: T) -> some Shape {
    return Triangle()
}

flip(triangle)
// flip(protoTriangle) // Protocol 'Shape' as a type cannot conform to the protocol itself
