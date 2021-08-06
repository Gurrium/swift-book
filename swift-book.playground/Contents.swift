enum Thrower {
    struct SomeError: Error {}

    static func throwsError() throws -> Void {
        throw SomeError()
    }
}

enum Caller {
    static func call() throws {
        try Thrower.throwsError()
    }
}

try Caller.call()
