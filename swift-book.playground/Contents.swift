
import Foundation
class ShoppingListItem {
    let id = UUID()
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()
print(item.id)
