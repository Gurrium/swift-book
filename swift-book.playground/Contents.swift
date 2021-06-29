import Foundation

func some(hoge hoge: String, hoge fuga: String) {
    print(hoge, fuga)
}

some(hoge: "hoge", hoge: "fuga")

func geometricMean(_ data: Float...) -> Float {
    var sum: Float = 1
    for datum in data {
        sum *= datum
    }
    return pow(sum, 1 / Float(data.count))
}

print(geometricMean(2, 8))
