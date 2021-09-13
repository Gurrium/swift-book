fileprivate protocol PrivateProtocol {
    var prop: String { get }
}

public class PublicClass: PrivateProtocol {
//    private var prop = "" // Property 'prop' must be declared fileprivate because it matches a requirement in fileprivate protocol 'PrivateProtocol'
    internal var prop = ""
}
