//func balance(_ x: inout Int, _ y: inout Int) {
//    let sum = x + y
//    x = sum / 2
//    y = sum - x
//}

//var tup = (a: 1, b: 2)
//balance(&tup.a, &tup.b)
//print(tup)

//_ = {
//    func localBalance(_ x: inout Int, _ y: inout Int) {
//        let sum = x + y
//        x = sum / 2
//        y = sum - x
//    }
//    var localTup = (a: 1, b: 3)
//    localBalance(&localTup.a, &localTup.b)
//    print(localTup)
//}()

var tup = (x: 0, y: 2)
func b(_ x: inout Int, _ y: inout Int) {
    let tmp = x
    x = y
    y = tmp
}
b(&tup.x, &tup.y) // error

_ = {
    var tup = (x: 0, y: 2)
    func b(_ x: inout Int, _ y: inout Int) {
        let tmp = x
        x = y
        y = tmp
    }
    b(&tup.x, &tup.y) // ok
}()
