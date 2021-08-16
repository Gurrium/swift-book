import Foundation
import _Concurrency

struct Photo {}

func downloadPhoto(named: String) async -> Photo {
    await Task.sleep(2 * 1_000_000_000)
    return Photo()
}

Task<[Photo], Never>(priority: nil, operation: {
    async let firstPhoto = downloadPhoto(named: "first")
    async let secondPhoto = downloadPhoto(named: "second")
    async let thirdPhoto = downloadPhoto(named: "third")

    let photos = await [firstPhoto, secondPhoto, thirdPhoto]
    print(photos)

    return photos
})
