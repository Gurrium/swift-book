struct Hoge {}
print(
    Hoge().self, // Hoge()
    type(of: Hoge()), // Hoge
    Hoge.self, // Hoge
    // type(of: Hoge), // error: Expected member name or constructor call after type name
    Hoge.self.self, // Hoge
    type(of: Hoge.self) // Hoge.Type
)
