struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")

struct Some {
    subscript(table: TimesTable) -> Int {
        return table.multiplier
    }
}
Some()[threeTimesTable]
