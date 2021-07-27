class Food: CustomStringConvertible {
    var name: String
    var description: String {
        "name: \(name)"
    }

    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

print(Food(name: "Banana"))
print(Food())

class RecipeIngredient: Food {
    var quantity: Int
    override var description: String {
        super.description + ", quantity: \(quantity)"
    }

    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

// サブクラス独自のDesignated Initializerを実装しているので自動的には継承されないが，
// スーパークラスのDesignated Initializerを全て実装しているのでConvenience Initializerが継承される
print(RecipeIngredient(name: "Egg", quantity: 12))
print(RecipeIngredient(name: "Apple"))
print(RecipeIngredient())

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    override var description: String {
        super.description + ", purchased: \(purchased)"
    }
}

// サブクラス独自のDesignated Initializerを実装していないので，
// スーパークラスのDesignated InitializerとConvenience Initializerが全て継承される
print(ShoppingListItem(name: "Milk", quantity: 1))
print(ShoppingListItem(name: "Onion"))
print(ShoppingListItem())
