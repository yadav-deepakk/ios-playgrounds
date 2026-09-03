import UIKit

print("Learning swift basics -- vars and let")

// basics types in swift - Int, UInt,  Float, Double, Character, String, Bool
var number1: Int = -112
var number2: UInt = 112
var number3: Float  = 11.11
var number4: Double  = 11212.1113123
var isEligible: Bool = false
var vowel: Character = "A"
var greeting: String = "Hello, world!"
let PI_VALUE: Double = 3.14159265358979323846
print(greeting)

// Optional: you can make a variable optional in swift
var var1: String?
var var2: String?
print("var1: \(var1 ?? "hello") var2: \(var2 ?? "world")")
var1 = "New Value";
var2 = "false"
print("var1: \(var1!) var2: \(var2!)")

// Collection: Array, Set, Dictionary, Range
var names: [String] = ["Rahul", "Sohan", "Rohan", "Radhika"] // Array
var set1: Set<Int> = [1,2,35,6] // set
var person1: [String: String] = ["name":"Rahul", "age":"12", "grade":"A+"] // dictionary
var range1 = 1...5 // range 1,2,3,4,5
var range2 = 1..<5 // range 1,2,3,4
for (index, name) in names.enumerated() {
    print("index: \(index), name: \(name)")
}
for (index, x) in set1.enumerated() {
    print("index: \(index), element: \(x)")
}
