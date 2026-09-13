import UIKit

// #Day9 - Closures
func greet() {
    print("Hello")
}
// functions can be assigned to variables
var greetCopy: () -> Void = greet
greetCopy()

// creating closures
let greetingUser = { (name: String) in
    print("\(name), welcome to the journey!")
}
greetingUser("Naman")

let add : (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    print("addition result is: \(a + b)")
    return a + b
}
add(79, 23)

//shorter version of closures
let add1 : (Int, Int) -> Int = { a, b in
    a + b
}
let add2 : (Int, Int) -> Int = { $0 + $1 }
print(add1(23,87))
print(add2(2,8))

// passing closures as argumens in swift
let teamMates = ["jenna","susan","ramya","tunisha","sehnaz","alley","bennie"]
let captainFirstSortedTeam = teamMates.sorted(by: { (a: String, b: String) -> Bool in
    if a == "susan" { return true }
    if b == "susan" { return false }
    return a < b
})
let reverseOrderTeam = teamMates.sorted { $0 > $1 }
print(teamMates)
print(captainFirstSortedTeam)
print(reverseOrderTeam)

func doSomeWork(work: () -> Void) {
    work()
    print("Work has been done")
}

let work1 = {
    print("Doing house hold work")
}
doSomeWork(work: work1) // pass the work1 as argument in function
doSomeWork {
    print("completing the tasks for todays test")
}

func doImportantTask(task1: () -> Void, task2: () -> Void, task3: () -> Void) {
    print("starting out tasks one by one.")
    task1()
    task2()
    task3()
    print("All tasks - task1, task2 and task3 has been done.")
}

doImportantTask {
    print("Collecting the project requirement.")
} task2: {
    print("Creating system design and bluepring to work on")
} task3: {
    print("Buiding and developing it.")
}

// #checkpoint 5
let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]
var results = luckyNumbers
                .filter { !$0.isMultiple(of: 2) }   // get rid of even numbers
                .sorted { $0 < $1 }                 // sort the number in ascending order
                .map { "\($0) is a lucky number" }  // map every number to a string

for result in results { print(result) }             // print result
