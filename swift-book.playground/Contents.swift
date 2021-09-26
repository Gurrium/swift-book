import Foundation

class User {}
typealias EquatableUser = User & Equatable

class NewUser: EquatableUser {
    let id = UUID()

    static func == (lhs: NewUser, rhs: NewUser) -> Bool {
        lhs.id == rhs.id
    }
}
