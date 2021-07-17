struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]

    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }

    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }

    func inspect() {
        for i in 0..<rows {
            for j in 0..<columns {
                print(grid[i * columns + j], terminator: " ")
            }
            print()
        }
    }

    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var twoByTwo = Matrix(rows: 2, columns: 2)
twoByTwo.inspect()
twoByTwo[0, 1] = 2.5
twoByTwo.inspect()
