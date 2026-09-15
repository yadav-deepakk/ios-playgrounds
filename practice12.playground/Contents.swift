import UIKit

// classes: important point between classes that differentiate it from structs
// 1. classes are reference types
// i.e. if you create copy of an instance of a class then change made in one reflect in
// other one too, as they point to same object in memory.
// 2. classes participate in inheritance
// 3. memberwise init method in classes need to be declared exclusively.
// 4. Deinitializer method can be called when final copy of instance is destroyed.
// 5. constant instances of class can modify its fields/members if they are declared vars.

class Game {
    var score: Int = 0 {
        didSet {
            print("Current score is: \(self.score)")
        }
    }
}

var game = Game()
game.score = 10

// inheritance
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func printSummary() {
        print("Person name is: \(self.name)")
    }
}

class User : Person {
    var isAdmin: Bool
    var email: String
    
    init(name: String, isAdmin: Bool, email: String) {
        self.isAdmin = isAdmin
        self.email = email
        super.init(name: name)
    }
    
    func login(username: String, password: String) -> Bool {
        // check the username and password
        // return false/true
        print("Authentcating user.")
        return true
    }
    
    override func printSummary() {
        print("User is \(self.name) with email \(self.email)")
    }
}

let user = User(name: "alfred", isAdmin: false, email: "alfred@email.com")
user.printSummary()
user.login(username: "allu", password: "arjun")

class Car {
    var model: String
    var isElectric: Bool = false
    
    init(model: String) {
        self.model = model
    }
    
    init(model: String, isElectric: Bool) {
        self.model = model
        self.isElectric = isElectric
    }
    
    func toString() -> String {
        "Car[model: \(self.model), isElectric:\(self.isElectric)]"
    }
    
    func copy() -> Car {
        let car = Car(model: self.model, isElectric: self.isElectric)
        return car
    }
}

var car1 = Car(model:"Tesla", isElectric: true)
var car2 = car1
var car3 = car1.copy()
car2.model = "BMW"
car2.isElectric = false
print(car1.toString())   // car1 and car2 points to same instance
print(car2.toString())
print(car3.toString())

// Deinitializer
class Vehicle {
    var vehicleId:Int
    init(vehicleId:Int){
        self.vehicleId = vehicleId
        print("vehicle\(self.vehicleId) is instantiated.")
    }
    deinit{
        print("vehicle\(self.vehicleId) is destroyed.")
    }
}

for i in 1...10 {
    print("creating vehicle\(i)")
    var vehicle = Vehicle(vehicleId: i)
}

var vehicles = Array<Vehicle>()
for i in 1...10 {
    vehicles.append(Vehicle(vehicleId: i))
}
vehicles.removeAll()

// how to work with variables inside classes
// 1. if instance varirable declared constant with let keyword then it will always points to same instance as it is a constant and if class fields are variables then they can be altered.
// 2. if instance variable is declared with var then it can point to any other instance of same type later, class fields
// mutablity depends on whether class fields/members are declared vars or let.

// checkpoint 7
class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog : Animal {
    init() { super.init(legs: 4)}
    func speak() { print("Woofff!") }
}
class Corgi : Dog { }
class Poodle : Dog { }

class Cat : Animal {
    var isTame: Bool
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak() { print("Meowww!") }
}
class Persian : Cat { }
class Lion : Cat {
    init() { super.init(isTame: false) }
    override func speak() { print("Roaring...") }
}

let corgi1 = Poodle()
print(corgi1.legs)
corgi1.speak()

let poodle1 = Poodle()
print(poodle1.legs)
poodle1.speak()

let persian1 = Persian(isTame: true)
print(persian1.legs)
print(persian1.isTame)
persian1.speak()

let lion1 = Lion()
print(lion1.legs)
print(lion1.isTame)
lion1.speak()
