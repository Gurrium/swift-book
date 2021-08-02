struct Chessboard {
    let boardColors: [Bool] = {
        var temporaryBoard: [Bool] = []
        var isBlack = false
        for i in 1...8 {
            for j in 1...8 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAt(row: Int, column: Int) -> Bool {
        return boardColors[(row * 8) + column]
    }
}

let board = Chessboard()
print(board.squareIsBlackAt(row: 0, column: 1)) // true
print(board.squareIsBlackAt(row: 7, column: 7)) // false

import Foundation

let str = "abcde12345١٢٣٤٥"
let regex = try! NSRegularExpression(pattern: "([0-9]+)")
let result = regex.firstMatch(in: str, range: .init(location: 0, length: str.count))!
str[Range(result.range, in: str)!] // 12345
