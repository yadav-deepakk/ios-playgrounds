import UIKit

//#DAY1
//variables and constants
var number = 4  // variable
let name = "Deepak" // constant
let PI_VALUE = 3.14159 // constant
print(number.isMultiple(of: 2))

// string
var email = "deepak@email.com"
var string1 = String()
var string2 = ""
var string3 = """
    Hello world! 
    this is learning to swift class. 
    100days of challenge. 
    """
var string4 = "\"It's cold outside\", said by John."

print(email)
print(string3)
print(string3.count)
print(email.uppercased())
print(string3.lowercased())
print(string1.isEmpty)
print(string3.starts(with: "Hello"))
print(string3.contains("swift"))
print(string4)

// whole number and decimal values
let num1 = 11
let num2 = 11.11
var num3 = 12.0
let result = num1 + Int(num2)
print(num1.isMultiple(of: 11))
print(result)

//#DAY2
// Booleas
var isEligible = false;
print(isEligible)
isEligible.toggle()
print(isEligible)

// join strings together
//using + sign and using string interpolation
var firstName = "Deepak Kumar"
var lastName = "Yadav"
var fullName1 = firstName + " " + lastName  // concatenation with + sign
var fullName2 = "\(firstName) \(lastName)" // string interpolation
print(fullName1)
print(fullName2)
print("5 x 5 is \(5*5)")


//#Checkpoint 1
// convert degree to fo
let degree = 37.0
let fahrenheit = (degree * 9/5) + 32
print("\(degree) in fahrenheit is \(fahrenheit)")
