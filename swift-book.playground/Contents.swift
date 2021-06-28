func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if let min = array.min(),
       let max = array.max() {
//        return (min, max)
        return (min: min, max: max)
    } else {
        return nil
    }
}

minMax(array: Array(0...10))?.min

let minMax: (min: Int, max: Int)
minMax = (1, 2)
minMax.min

// let minMachs: (min: Int, machs: Int) = minMax
