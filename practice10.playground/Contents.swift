import UIKit

// #Day10 - Structs
struct Player {
    var name: String
    var jerseyNumber: Int
    
    // initializers
    init(name: String) {
        self.name = name
        self.jerseyNumber = Int.random(in: 1...99)
    }
    
    init(name: String, jerseyNumber: Int) {
        self.name = name
        self.jerseyNumber = jerseyNumber
    }
    
    func displayPlayerInfo() {
        print("\(jerseyNumber): \(name)")
    }
}

let sachin = Player(name: "Sachin Tendulkar", jerseyNumber: 10)
sachin.displayPlayerInfo()
let viru = Player(name: "Virendra Sehwag", jerseyNumber: 0)
viru.displayPlayerInfo()
let yuvi = Player(name: "Yuvraj Singh")
yuvi.displayPlayerInfo()

struct Employee {
    var name: String
    var totalVacationDays: Int
    
    // mutating function to mutate the self vars
    mutating func takeDayOff(days: Int) {
        if self.totalVacationDays < days {
            print("There aren't sufficient days remaining! Vacation cancelled!")
        } else {
            self.totalVacationDays -= days
        }
    }

}

var sterlin = Employee(name: "Sterlin Matthew", totalVacationDays: 15)
sterlin.takeDayOff(days: 12)
print(sterlin.totalVacationDays)
sterlin.takeDayOff(days: 23)

struct Employee1 {
    var name: String
    var totalVacationDays: Int
    var vacationTaken: Int = 0
    
    // computed property
    var vacationDaysRemaining: Int {
        get {
            totalVacationDays - vacationTaken
        } set {
            totalVacationDays = vacationTaken + newValue
        }
    }
    
}

var ninad = Employee1(name: "Ninad Marathe", totalVacationDays: 14)
ninad.vacationTaken += 3
print(ninad.vacationDaysRemaining)
ninad.vacationTaken += 4
print(ninad.vacationDaysRemaining)
ninad.vacationDaysRemaining = 2
print(ninad.totalVacationDays)


// concept of property obeserver
struct Game {
    var score: Int = 0 {
        willSet {
            print("------ Will Set ------")
            print("previous score was \(score)")
            print("new score will be \(newValue)")
        } didSet {
            print("------ Did Set ------")
            print("current score is \(score)")
            print("previous score was \(oldValue)")
        }
    }
}

var game = Game()
game.score += 1
game.score = 20
