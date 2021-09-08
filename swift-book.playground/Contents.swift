var stepSize = 1

func increment(_ number: inout Int) {
    number += stepSize
}

increment(&stepSize) // error

func balance(_ x: inout Int, _ y: inout Int) {
    let sum = x + y
    x = sum / 2
    y = sum - x
}
var playerOneScore = 42
var playerTwoScore = 30
balance(&playerOneScore, &playerTwoScore)
balance(&playerOneScore, &playerOneScore) // error
