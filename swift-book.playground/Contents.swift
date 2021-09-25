let hoge: Int? = nil

switch hoge{
case .none:
    print("hoge is nil")
case .some(let unwrapped):
    print(unwrapped)
}
