func some() {
    print("some()")
}


struct Some {
    @warn_unqualified_access
    func some() {
        print("Some.some()")
    }

    func doSome() {
        some() // Use of 'some' treated as a reference to instance method in struct 'Some'
    }
}
