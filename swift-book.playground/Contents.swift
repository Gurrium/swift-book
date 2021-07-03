var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))
assert(1 == 1)
