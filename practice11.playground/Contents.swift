import UIKit

// access control - public, private, fileprivate and private(set)
struct Account {
    fileprivate var accountType: String
    private(set) var name: String
    private var balance: Double = 0.0 {
        didSet {
            print("Balance is now \(balance)")
        }
    }
    
    init(accountType: String, name: String) {
        self.accountType = accountType
        self.name = name
    }
    
    func getBalance() -> Double {
        return self.balance
    }
    
    mutating func setName(to newName: String) {
        self.name = newName
    }
    
    mutating func withdraw(amount: Double) -> Bool {
        if self.balance > 0 && amount < self.balance {
            self.balance -= amount
            return true;
        } else {
            print("Can not withdraw money, insufficeint balance!")
            return false
        }
    }
    
    mutating func deposite(amount: Double) -> Bool {
        self.balance += amount
        return true
    }
    
}

var acc1 = Account(accountType: "Savings", name: "Dharam")
print(acc1.accountType)
acc1.accountType = "current"
print(acc1.accountType)
print(acc1.name)
acc1.setName(to: "Dharmendra")
print(acc1.name)
acc1.withdraw(amount: 10)


// static vars and methods
// non-static func can access static func but not vice-versa
@MainActor
struct School {
    static var studentCount: Int = 0
    let schoolName: String
    var principal: String
    
    static func takeStudent(student: String) {
        print("student \(student) joined school.")
        studentCount += 1
    }
    
    func getName () -> String {
        print(School.studentCount)
        return self.schoolName
    }
}

School.studentCount = 10
School.takeStudent(student: "Naman")
print(School.studentCount)

var school1 = School(schoolName: "St. Johes", principal: "Mr. Harness")
school1.getName()

struct AppData {
    static let appName:String = "sample"
    static let version:String = "v1.2.3"
    static let release:String = "23 Jan"
}

struct Employee {
    var name: String
    let id: Int
    
    static let employee = Employee(name: "Mr. David", id: 12)
}


// checkpoint 6
struct Car {
    private let model: String
    public let seats: Int
    private(set) var currentGear: Int = 0
    
    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
    }
        
    mutating func increaseGear(by: Int) {
        // 0 - 10
        if (self.currentGear + by) <= 10 {
            self.currentGear += by
        } else {
            print("Can not increase gear")
        }
    }
    
    mutating func decreaseGear(by: Int) {
        // 0 - 10
        if (self.currentGear - by) > 0 {
            self.currentGear -= by
        } else {
            print("Can not decrease gear")
        }
    }
    
}

var tesla = Car(model: "Model Y", seats: 2)
var rover = Car(model: "Range Rover", seats: 6)
