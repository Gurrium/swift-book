protocol Serializable {
    func serialize() -> Any
}

//extension Array: Serializable where Element == Int {
//    func serialize() -> Any {
//        // implementation
//    }
//}
//// Conflicting conformance of 'Array<Element>' to protocol 'Serializable'; there cannot be more than one conformance, even with different conditional bounds
//extension Array: Serializable where Element == String {
//    func serialize() -> Any {
//        // implementation
//    }
//}

protocol SerializableInArray {}
extension Int: SerializableInArray {}
extension String: SerializableInArray {}

extension Array: Serializable where Element: SerializableInArray {}
    func serialize() -> Any {
        switch Element.self {
        case is String.Type:
            return "string"
        case is Int.Type:
            return "int"
        default:
            return "unknown"
        }
    }

//    func serialize() -> Any where Element == Int{
//        return "int ver"
//    }
//
//    func serialize() -> Any where Element == String {
//        return "string ver"
//    }
}

print([1, 2, 3].serialize())
print(["a", "b", "c"].serialize())
print([1.0, 2.0, 3.0].serialize()) // Referencing instance method 'serialize()' on 'Array' requires that 'Double' conform to 'SerializableInArray'
