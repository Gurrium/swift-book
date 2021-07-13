class SomeClass {
    static var storedTypeProperty = "Some value."
//    class var overrideableStoredTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}

class SubClass: SomeClass {
    override static var overrideableComputedTypeProperty: Int {
        2
    }
}

class SubSubClass: SubClass {
//    SubClassでstatic varとなっているのでこれはできない
//    override static var overrideableComputedTypeProperty: Int {
//        2
//    }
}
print(SubClass.overrideableComputedTypeProperty) // => 2
