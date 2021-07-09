class DataImporter {
    var filename = "data.txt"

    init() {
        print("Initialize DataImporter")
    }
}

class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
}

//let manager = DataManager()
//print("Add Some data")
//manager.data.append("Some data")
//print("Add Some more data")
//manager.data.append("Some more data")
//print("Add Some data")
//print(manager.importer.filename)

// マルチスレッドのテスト
import Foundation

let someManager = DataManager()
DispatchQueue.init(label: "first").async {
    print("first")
    someManager.importer.filename
}
DispatchQueue.init(label: "second").async {
    print("second")
    someManager.importer.filename
}
