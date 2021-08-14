import Foundation

func asyncFunc() async -> String {
    await Task.sleep(1 * 1_000_000_000)
    return "async result"
}
func nonAsyncFunc() -> String {
    "non-async result"
}

let asyncResult = asyncFunc()
print(asyncResult)
let nonAsyncResult = nonAsyncFunc()
print(nonAsyncResult)
