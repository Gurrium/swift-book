let external: (() -> Void) -> Void = { _ in () }
func takesTwoFunctions(first: (() -> Void) -> Void, second: (() -> Void) -> Void) {
//    first { first {} }       // Error
//    second { second {}  }    // Error
//
//    first { second {} }      // Error
//    second { first {} }      // Error

    first { external {} }    // OK
    external { first {} }    // OK
}

takesTwoFunctions(first: { _ in }, second: { _ in })
