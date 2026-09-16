import UIKit

// DAY14 Optionals, nil
var name:String? = nil
var dict:[String:String] = ["name":"someusername", "email":"user@email.com","nickname":"nick"]
struct Book {
    var title : String
    var author : String?
}

// unwrapping
if let name = name {
    print(name)
}

if let dob = dict["dob"] {
    print("date of birth is : \(dob)")
}


// gurading
enum FactorialError : Error {
    case missingNumber
}

enum UserError : Error {
    case networkError, userNotFound
}

func factorial(number: Int?) throws -> Int {
    guard let number = number else {
        print("There is no number to calculate.")
        throw FactorialError.missingNumber
    }
    if number == 0 || number == 1 {
        return 1
    } else {
        return try! number * factorial(number: number - 1)
    }
}

do {
    var fact1 = try factorial(number: 10)
    print(fact1)
    var fact2 = try factorial(number: nil)
    print(fact1)
} catch {
    print("Error: \(error.localizedDescription)")
}

// nil coalescing and optional chaining
var nameCount = name?.count ?? 0
var dob = dict["dob"] ?? "Unavailable"
var address = dict["address", default: "NA"]
let book1 : Book? = nil
var fistLetter = book1?.author?.first ?? "A"
print("\(nameCount)")
print("\(dob)")
print(fistLetter)
let input = ""
let validInput = Int(input) ?? 10
print(validInput)

// handle function failures with optionals
func getUser(id: Int) throws -> String {
    throw UserError.networkError
}

var user = try? getUser(id: 123)    // optional try
if let user = user {
    print("user is : \(user)")
}

// Checkpoint 9
let randomElem: ([Int]?) -> Int = { $0?.randomElement() ?? Int.random(in: 1...100) }
print("random1: \(randomElem(nil))")
print("random2: \(randomElem([]))")
print("random3: \(randomElem([10,23,1,76,34,99,11]))")
