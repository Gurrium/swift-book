import Foundation

@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}

class Counter {
    private(set) var count: Int
    var dataSource: CounterDataSource?

    init(count: Int) {
        self.count = count
    }

    func increment() {
        if let amount = dataSource?.increment?(forCount: count) {
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}

class TargetCounter: CounterDataSource {
    private var target: Int = 0

    init(target: Int) {
        self.target = target
    }

    func increment(forCount count: Int) -> Int {
        if count == target {
            return 0
        } else if count > target {
            return -1
        } else {
            return 1
        }
    }
}

let counter = Counter(count: 90)
counter.dataSource = TargetCounter(target: 100)
for _ in 0...15 {
    print(counter.count)
    counter.increment()
}
