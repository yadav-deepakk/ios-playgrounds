import UIKit

// structure in swift
// difference in class and a struct
// classes are reference types and struct are value types
// structs get a memberwise initializer automatically, while classes generally don't get the same automatic memberwise initializer.
// struct don't participate in inhertance and classes do.

//============
// structure
//============

struct Person {
    var firstName: String
    var middleName: String?
    var lastName: String
    
    func printInfo() {
        print("\(firstName) \(middleName ?? "") \(lastName)")
    }
}

var person1 = Person(
    firstName: "John",
    middleName: nil,
    lastName: "smith",
)

var person2 = person1
person1.middleName = "Alex" // changes made in person1 won't refect in person2
person2.firstName = "Alexander" // changes made in person2 won't refect in person1
person1.printInfo()
person2.printInfo()


//==============
// classes
//==============

class Car {
    var brand: String
    var model: String
    var isElectric: Bool
    
    init(brand: String, model: String, isElectric: Bool) {
        self.brand = brand
        self.model = model
        self.isElectric = isElectric
    }
    
    func printInfo() {
        print("brand: \(self.brand), model: \(self.model), isElectric: \(isElectric ? "true":"false")")
    }
}

var car1 = Car(brand: "Tesla", model: "Model S", isElectric: true)
var car2 = car1
car1.printInfo()
car2.printInfo()

// making changes in car2 will also reflect in the car1 as
// classes are reference types.
car2.brand = "Ford"
car2.model = "F-150"
car2.isElectric = false

car1.printInfo()
car2.printInfo()

