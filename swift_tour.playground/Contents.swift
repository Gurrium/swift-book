let tuple = (1, 2)
print(tuple.0)

var iuoString: String! = "implicitly unwrapped optional string"
var oString = iuoString
oString = nil
iuoString = nil
print(oString) // 落ちない
print(iuoString) // 落ちない
print(iuoString.count) // 落ちる
