import UIKit

// functions - without parameter and without return type.
// functions - with parameter and with return type.
// functions - with default parameter value and return type. 
// functions - with parameter and return type as tuple.
// making use of labels optional.

func greet(){
    print("Hello World!")
}

func factorial(num: Int) -> Int {
    if num < 0 {
        print("Invalid input.")
        return -1
    }else if num == 0 || num == 1 {
        return 1
    }
    var fact: Int = 1;
    for i in 1...num {
        fact *= i
    }
    return fact;
}

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func sub(_ number1: Int = 12, _ number2: Int = 9) -> Int {
    return number1 - number2
}

func stats(nums: Int...) -> (min: Int, max: Int, sum: Int, product: Int) {
    if nums.isEmpty {
        return (0,0,0,0)
    }
    var minVal: Int = nums[0]
    var maxVal: Int = nums[0]
    var product: Int = 1
    var sum : Int = 0
    for i in 0...(nums.count-1) {
        minVal = minVal > nums[i] ? nums[i] : minVal
        maxVal = maxVal < nums[i] ? nums[i] : maxVal
        product *= nums[i]
        sum += nums[i]
    }
    return (minVal, maxVal, sum, product)
}

//====================
// function calling
//====================

greet()

var fact1: Int = factorial(num: 5)
print("Factorial of 5 is \(fact1)")

var addition1 = add(number1: 12, number2: 34) // used labels
print("addition operation result (used labels): \(addition1)")
var sub1 = sub() // no label and values
print("substraction operation without args: \(sub1)")
var sub2 = sub(90, 33) // no labels and values
print("substraction operation with args(No label): \(sub1)")

var statsOfArr = stats(nums: 12,1,10,31,65,9)
print("stats of array min val: \(statsOfArr.min)")
print("stats of array max val: \(statsOfArr.max)")
print("stats of array sum: \(statsOfArr.sum)")
print("stats of array product: \(statsOfArr.product)")
