enum Liquid {
    case vodka(Material)
    case water
}

class Material {
    var name: String

    init(_ name: String) {
        self.name = name
    }
}

let liquid = Liquid.vodka(Material("corn"))

switch liquid {
case .vodka(var material):
    material.name = "rye"
case .water:
    print("water")
}

if case .vodka(let material) = liquid {
    print(material.name) // => rye
}
