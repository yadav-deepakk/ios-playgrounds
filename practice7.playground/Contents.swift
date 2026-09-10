import UIKit

// #DAY5 - if, switch and ternary operators
// if statement
var age = 13
if age < 18 {
    print("you're not eliglible to vote.")
}

var parentalConsent = true
if age < 18 || parentalConsent {
    print("You can participate in the competition.")
}

let hasDrivingLicense : Bool = false
if age >= 18 && hasDrivingLicense {
    print("You can drive the vehical.")
}

// if else statement
let enrolledInCourse = false
if enrolledInCourse {
    print("You can attend the classes.")
} else {
    print("You can not attend the classes.")
}

// if else if - ladder
let temprature = 39 // in degrees

if temprature >= 40 {
    print("it's a very hot day.")
} else if temprature >= 30 {
    print("it's a hot day")
} else if temprature >= 20 {
    print("it's a normal temprature.")
} else if temprature >= 10{
    print("It's a cold day.")
} else {
    print("it's freezing today.")
}

// ternary operator - shorter version of if else
let number: Int = 12
var isEvenNumber = number.isMultiple(of: 2) ? true : false

// switch statement
var char : Character = "a"
switch char {
case "a", "e", "i", "o", "u", "A", "E", "I", "O","U":
    print("It's a vowel.")
default:
    print("Either it is a consonant or any special character.")
}

enum Day {
    case SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATUREDAY
}

let day = Day.SUNDAY
switch day {
case .SUNDAY, .SATUREDAY:
    print("It's a weekend.")
case .MONDAY, .TUESDAY, .WEDNESDAY, .THURSDAY, .FRIDAY:
    print("It's a weekday.")
}

// #DAY6 Loops
// for loop
for i in 1...12 {
    print("Table of number \(i)")
    for j in 1...12 {
        print("  \(i) x \(j) = \(i * j)")
    }
    print()
}

// while loop
var n1 = 123
var reserveN1 = n1
var rev = 0
while n1 != 0 {
    rev = rev * 10 + n1 % 10
    n1 /= 10
}
print("reverse of number \(reserveN1) is \(rev)")

// repeat while loop
var numberToGuess = 50
var guess = 0
repeat {
    guess = Int.random(in: 1...100)
    print("guess is \(guess)")
} while guess != numberToGuess

// break and continue statements inside loops.
// break
var arr = [ 12, 89, 44, 45, 23, 85, 41 ]
var target = 23
var flag = false
for num in arr {
    if num == target{
        flag = true
        break
    }
}
print(flag ? "taget is present in array":"target is absent in array")

// continue
var hasPass:[String: Bool] = [
    "Rahul" : false,
    "Rohan" : false,
    "Ram" : false,
    "Ramesh": true,
    "Ranjit": false,
    "Ronak": true,
    "Randeep": false
]

for passenger in hasPass.keys {
    if hasPass[passenger] ?? false {
        continue
    }
    print("\(passenger) need to buy a ticket.")
}

// checkpoint 3 - FizzBuzz problem.
// if n is divided by 2 print "fizz", if n is divided by 3 print "buzz",
// if n is divided by both 2 and 3 print "fizzbuzz"
// else print the number itself
for num in 1...100 {
    var result: String = String()
    result.append(num.isMultiple(of: 2) ? "Fizz" : "")
    result.append(num.isMultiple(of: 3) ? "Buzz" : "")
    print("\(num) -> \(result.isEmpty ? String(num) : result)")
}
