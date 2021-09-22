struct Some {}
extension Some {
    postfix static func ++ (e: Self) -> Self { e }
    prefix static func ++ (e: Self) -> Self { e }
    postfix static func -- (e: Self) -> Self { e }
    prefix static func -- (e: Self) -> Self { e }

    // Operator implementation without matching operator declaration
    postfix static func +++ (e: Self) -> Self { e }
    // Operator implementation without matching operator declaration
    prefix static func +++ (e: Self) -> Self { e }
    // Operator implementation without matching operator declaration
    postfix static func --- (e: Self) -> Self { e }
    // Operator implementation without matching operator declaration
    prefix static func --- (e: Self) -> Self { e }
}
