//import Foundation
//
//struct MyError: LocalizedError {
//    var errorDescription: String? = "myError description"
//}
//
//print(MyError().localizedDescription)

import Foundation

struct MyError: LocalizedError {
    var errorDescription: String? = "myError description"
}

print(MyError().localizedDescription) // myError description
