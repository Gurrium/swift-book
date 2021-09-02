
//struct Stack<Element> {
//    var items: [Element]
//
//    func peek() -> Element? {
//        return items.count > 0 ? items[0] : nil
//    }
//}
//
//protocol Stackable {
//    associatedtype Elementt
//    var items: [Elementt] { get set }
//    func peek() -> Elementt?
//}
//
////extension Stack: Stackable {
////}
//
//let intStack = Stack(items: [1, 2, 3])
//print(intStack.peek())
//
//
//extension Stack: Stackable where Element: Equatable, Element == Int {}
//
//struct EquatableStack<Element> where Element: Equatable {}
//
//struct NonGeneric {
//    func nonGenericFunc() {
//        print("nonGenericFunc")
//    }
//
//    func genericFunc<T>(_ a: T) {
//        print("genericFunc<\(T.self)>")
//    }
//
//    var any: Any
////    var int: Int
//
//    init<T>(_ param: T) {
////        if T is Int {
////            int = param
////        } else {
//            any = param
////        }
//    }
//}
//NonGeneric(3).genericFunc(2)
//
//extension Stack where Element: Equatable {}

//
//func genericFuncion<T: Equatable>(_ param: T) {
//    print(param)
//}
//
//class GenericType<T: Equatable> {
//    var prop: T
//
//    init(_ prop: T) {
//        self.prop = prop
//    }
//}
//
//protocol Prot {
//    associatedtype T: Equatable
//}

//func genericFuncion<T, U>(_ t: T, u: U) {}
//
//struct GenericType<T, U> {}
//
//protocol Prot {
//    associatedtype T
//    associatedtype U
//}

func genericFuncion<T: Sequence, U>(_ t: T, u: U) where U: AnyObject, T.Element == U {}

struct GenericType<T: Sequence, U> where U: AnyObject, T.Element == U {}

protocol Prot {
    associatedtype T: Sequence
    associatedtype U: AnyObject where T.Element == U
}

//extension GenericType where T.Element == Some {
//    func printSome() {
//        print("T is Some")
//    }
//}
//
//extension GenericType where T.Element == Another {
//    func printAnother() {
//        print("T is Another")
//    }
//}
//
//class Some {}
//class Another {}
//GenericType<[Some], Some>().printSome() // T is Some
// GenericType<[Another], Another>().printSome() // Referencing instance method 'printSome()' on 'GenericType' requires the types 'Another' and 'Some' be equivalent


extension GenericType {
    func printSome() where T.Element == Some {
        print("T is Some")
    }

    func printAnother() where T.Element == Another {
        print("T is Another")
    }
}

class Some {}
class Another {}
GenericType<[Some], Some>().printSome() // T is Some
// GenericType<[Another], Another>().printSome() // Referencing instance method 'printSome()' on 'GenericType' requires the types 'Another' and 'Some' be equivalent
