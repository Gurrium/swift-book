import Foundation

class SomeClass: NSObject {
    @objc let property: String

    @objc(doSomethingWithInt:)
    func doSomething(_ x: Int) { print(x) }

    init(property: String) {
        self.property = property
    }
}
let some = SomeClass(property: "prop")
let selectorForMethod = #selector(SomeClass.doSomething(_:) as (SomeClass) -> (Int) -> Void)
let selectorForPropertyGetter = #selector(getter: SomeClass.property)

some.perform(selectorForMethod, with: 1) // 負のクソでか整数が出力される
// わからんけどご飯ができたので終わり

let unmanaged = some.perform(selectorForPropertyGetter)
print(unmanaged?.takeRetainedValue() as! String) // prop
unmanaged?.release()

extension SomeClass {
    @objc(doSomethingWithString:)
    func doSomething(_ x: String) { print(x) }
}
let anotherSelector = #selector(SomeClass.doSomething(_:) as (SomeClass) -> (String) -> Void)
some.perform(anotherSelector, with: "a") // a

let keyPath = #keyPath(SomeClass.property)
print(SomeClass(property: "prop").value(forKey: keyPath)!) // prop
