@dynamicMemberLookup
struct DynamicStruct {
    var dictionary = [
        "a": 0,
        "b": 1,
    ]

    subscript(dynamicMember member: String) -> Int {
        dictionary[member] ?? -1
    }
}

var ds = DynamicStruct()
print(ds.a) // 0
ds.dictionary["c"] = 3
print(ds.c) // 3

var d: Double = ds.d // Cannot convert value of type 'Int' to specified type 'Double'

struct StaticStruct {
    var dictionary = [
        "a": 0,
        "b": 1,
    ]
}

var ss = StaticStruct()
print(ds.a) // 0
ds.dictionary["c"] = 3
print(ds.c) // 3

var d: Double = ss.d // Value of type 'StaticStruct' has no member 'd'
