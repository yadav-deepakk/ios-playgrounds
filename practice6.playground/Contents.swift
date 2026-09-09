import UIKit

// arrays, dictionaries, sets, enums
// Arrays
var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var days = [String]()
var employeeList = Array<String>()
employeeList.append("Ram")
employeeList.append("Shyam")
employeeList.append("Chetan")
employeeList.append("Vivek")

print(employeeList)
employeeList.sort()
print(employeeList)
print(employeeList.reversed())
print(employeeList[0])
//print(employeeList[5]) // error: index out of range
print(employeeList.count)
print(employeeList.isEmpty)
print(employeeList.first!)
print(employeeList.last!)
for (index, month) in months.enumerated() {
    print("\(index+1): \(month)")
}
for month in months[1...(months.count-1)] {
    print("\(month)")
}

// Dictionary
var employee1 = [String:String]()
var employee2: [String:String] = [:]
employee2["name"] = "Shyam"
employee2["email"] = "shyam@email.com"
employee2["employeeId"] = "emp121123"
print(employee2)
print(employee2["employeeId"]!)
print(employee2["nickname", default: "unavailable"])
print(employee2.keys)
print(employee2.values)
print(employee2.count)

// set
var wholeNubers = Set<String>()
var employeeIds: Set<String> = ["emp121123", "emp121124", "emp121125"]
print(employeeIds)
print(employeeIds.contains("emp121124"))
print(employeeIds.contains("101"))
employeeIds.insert("101")
print(employeeIds.contains("101"))

// enums
enum Day{
    case SUNDAY
    case MONDAY
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case SATUREDAY
}

enum Month {
    case jan, feb, march, apr, may, jun, jul, aug, sept, oct, nov, dec
}

var birthdayMonth = Month.jan
birthdayMonth = .dec
birthdayMonth = .aug

var indepenceMonth = Month.aug

print(birthdayMonth)
print(indepenceMonth)


// Type annotations
// data types
let n1 : Int = 12
let n2 : Float = 1.1
let n3 : Double = 12324123.123421
let n4 : UInt = 122

let str1 : String = "Sample String!"
let ch1 : Character = "a"
let isTrue: Bool = true

// complex types
let numbers1 : [Int] = [2,53,123,54,9] // array
let numbers2 : Set<Int> = [1,23,56,7,12] // set
let person : [String: String] = [
    "name":"Steve",
    "age":"21",
    "email":"steve.email@email.com"
] // dict
let tommorow : Day = .THURSDAY // enums

// Checkpoint 2
let nums : [Int] = [12,12,5,56,61,1,8,43,2,2]
print(nums)
print(nums.count)
let numsSet: Set<Int> = Set(nums)
print(numsSet)
print(numsSet.count)
