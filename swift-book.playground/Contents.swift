protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
                        .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}

class RandomGenerator: RandomNumberGenerator {
    var generator = SystemRandomNumberGenerator()

    func random() -> Double {
        return Double(UInt64.random(in: UInt64.min...UInt64.max, using: &generator)) / Double(UInt64.max)
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator

    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }

    func roll() -> Int {
        return Int(generator.random() * Double(sides))
    }
}

let evaluator = { (dice: Dice) in
    var distribution = Array(repeating: 0, count: dice.sides)
    for _ in 0..<(dice.sides * 1000) {
        distribution[dice.roll()] += 1
    }
    distribution.enumerated().forEach { index, count in
        print("\(index + 1):", count)
    }
}

print("LinearCongruentialGenerator")
evaluator(Dice(sides: 6, generator: LinearCongruentialGenerator()))
print("RandomGenerator")
evaluator(Dice(sides: 6, generator: RandomGenerator()))
