let tuple = (1, 2)
print(tuple.0)

var iuoString: String! = "implicitly unwrapped optional string"
var oString = iuoString
iuoString = nil
oString = nil
print(iuoString) // 落ちない
print(oString) // 落ちない
print(iuoString?.count) // 落ちない
print(oString?.count) // 落ちない
print(iuoString.count) // 落ちる
//print(oString.count) // コンパイルできない
