import Foundation
import _Concurrency

struct Photo {}

func uploadThumbail(_ thumbnail: Photo) async {
    print("uploadThumbnail started")
    await Task.sleep(2 * 1_000_000_000)
    print("uploadThumbnail ended")
}
func uploadTitle(_ title: String) async {
    print("uploadTitle started")
    await Task.sleep(2 * 1_000_000_000)
    print("uploadTitle ended")
}

Task {
    await withTaskGroup(of: Void.self) { taskGroup in
        taskGroup.addTask {
            await uploadThumbail(Photo())
            print("first task is cancelled:", Task.isCancelled)
        }
        taskGroup.addTask {
            await uploadTitle("Title")
            print("second task is cancelled:", Task.isCancelled)
        }
        taskGroup.cancelAll()
        print("taskGroup is cancelled:", taskGroup.isCancelled)
    }
}
