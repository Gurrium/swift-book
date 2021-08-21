struct OuterStruct {
    struct InnerStruct {
        let some: String
    }

    actor InnerActor {
        let immutable = "immutable"
    }

    let innerStruct: InnerStruct
    let innerActor: InnerActor
}

let outer = OuterStruct(innerStruct: .init(some: "some"), innerActor: .init())
outer.innerStruct.some
outer.innerActor.immutable
