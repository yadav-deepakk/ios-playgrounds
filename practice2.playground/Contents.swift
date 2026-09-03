import UIKit

// operators: unary, binary, ternary,
// assignment: =
// arithmetic: +,-/,*,%
// logical: &&, ||, !
// Unary: +, -
// Compound Assignment: +=, -=, *= etc
// Conditional: <,>,<=,>=,!=
// Ternary: (condition) ? (statement for true) : (statement for false)

// control flow statements
var number: Int = 0
var statement: String = if number == 0 {
    "number is zero."
} else if number < 0 {
     "number is negetive."
} else {
    "number is positive."
}
print(statement)

// switch case
var char : Character = Character(String("A").lowercased())
switch char {
    case "a", "e", "i", "o", "u":
        print("char '\(char)' is a vowel.")
    default:
        print("char \(char) is a consonant.")
}

// loops: for-in, while, repeat-while
var tableNum: Int = 9
for i in 1...10 {
    print("\(tableNum) x \(i) = \(tableNum * i)")
}

var number1: Int = 1235
var number2 = number1
var rev: Int = 0
while number1 != 0 {
    rev = rev * 10 + number1 % 10
    number1 /= 10
}
print("Reverse of \(number2) is \(rev)")

var n: Int = 10
repeat {
    print("n \(n)")
    n-=1;
} while n > 10

