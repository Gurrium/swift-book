import Foundation
import _Concurrency

struct Photo {}

func downloadPhoto(named: String) async -> Photo {
    await Task.sleep(2 * 1_000_000_000)
    return Photo()
}

Task {
    // unstructured concurrency
    let handle =
    // structured concurrency
    Task { // parent task
        await withTaskGroup(of: Photo.self) { taskGroup in
            let photoNames = ["a", "b"]
            for name in photoNames {
                taskGroup.addTask { // child task
                    return await downloadPhoto(named: name)
                }
            }
        }
    }
    // structured concurrency

    _ = await handle.result
    // unstructured concurrency
}

//func downloadThumbail() async -> Photo { return Photo() }
//func downloadTitle() async -> String { return "Title" }
//struct Series {
//    let title: String
//    let thumbnail: Photo
//}
//
//await withTaskGroup(of: Void.self) { taskGroup in
//    taskGroup.addTask {
//        await downloadThumbnail()
//    }
//    taskGroup.addTask {
//        await downloadTitle()
//    }
//}
//
//_ = await [thumbnail, title]
