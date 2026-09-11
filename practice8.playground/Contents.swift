import UIKit

// #DAY7 - functions
// no parameter no return value
func greet() {
    print("Ola!")
}

// with parameter and no return
func greet(name: String) {
    print("Ola! \(name)")
}

// with parameter and a return value
func greetString(name: String) -> String {
    return "Hello, \(name)"
}

greet()
greet(name: "Suresh")
var message = greetString(name: "Ramesh")
print(message)

// when there is just one return line in body,
// writing return is not mandatory
func additionOperation(a: Int, b: Int) -> Int {
    a + b
}

var result = additionOperation(a: 12, b: 34)
print("\(result)")

// skipping the label name in calling.
func productOf(_ nums: Int...) -> Int {
    if nums.isEmpty { return 0 }
    var p : Int = 1
    for num in nums {
        p *= num
    }
    return p
}
var result1 = productOf(12,41,4,1,75) // no label names
print("\(result1)")

func printTable(of number: Int, till: Int = 10) {
    print("Talbe of \(number) till \(till)")
    for i in 1...till {
        print(" \(number) x \(i) = \(number * i)")
    }
}
printTable(of: 12, till: 12)
printTable(of: 19)

// #DAY8 throwing functions
enum FactorialError: Error {
    case numberInvalid
}

func factorial(_ number : Int) throws -> Int {
    if number < 0 { throw FactorialError.numberInvalid }
    if number == 0 || number == 1 { return 1 }
    return try! number * factorial(number-1)
}

do{
    var fact1 = try factorial(5)
    print("factorial is : \(fact1)")
    var fact2 = try factorial(-12)
    print("factorial is : \(fact2)")
} catch {
    print("error : \(error.localizedDescription)")
}

// checkpoint 4
enum RootError : Error {
    case numberOutOfBouds, noRootFoundError
}

func lookForRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10_000 { throw RootError.numberOutOfBouds }
    var i = 0;
    while i*i <= number {
        if i*i == number { return i }
        i+=1
    }
    throw RootError.noRootFoundError
}

do {
    let root = try lookForRoot(of: 111_181)
    print("root is : \(root)")
} catch RootError.numberOutOfBouds {
    print("number should be in range of 1 to 10,000.")
} catch RootError.noRootFoundError {
    print("number is not a perfect square.")
} catch {
    print("Error is : \(error.localizedDescription)")
}
