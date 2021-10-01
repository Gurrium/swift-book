func logFunctionName(string: String = #function) {
    print(string)
}
func myFunction() {
    logFunctionName() // myFunction()
}

myFunction()
