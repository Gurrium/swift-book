enum Namespace {
    struct InternalStruct {}
    private struct PrivateStruct {}

    static let privateTuple = (InternalStruct(), PrivateStruct()) // Property must be declared private because its type '(Namespace.InternalStruct, Namespace.PrivateStruct)' uses a private type
    static let internalTuple = (InternalStruct(), InternalStruct())
}

Namespace.internalTuple
