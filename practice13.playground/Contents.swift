import UIKit

// #DAY13: Protocols and extensions
protocol Vehicle {
    var name: String { get }
    var passenger: Int { get set }
    
    func travelEstimate(distance: Double) -> Double
    func travel(distance: Double) -> Void
}

protocol CanBeElectric {
    var isElectric: Bool { get set }
}

struct Car: Vehicle, CanBeElectric {
    var name: String = "Car"
    var passenger: Int = 4
    var isElectric: Bool = true
    
    func travelEstimate(distance: Double) -> Double {
        (distance / 100)
    }
    
    func travel(distance: Double) {
        print("Traveling \(distance) km in car")
    }
}

struct Bicycle : Vehicle, CanBeElectric {
    var name: String = "Bicycle"
    var passenger: Int = 1
    var isElectric: Bool = false
    
    func travelEstimate(distance: Double) -> Double {
        distance / 10
    }
    
    func travel(distance: Double) {
        print("traveling \(distance) km in a bicycle")
    }
}

func travelDistance(distance: Double, using vehicle: Vehicle) {
    if vehicle.travelEstimate(distance: distance) > 100 {
        print("That is too much of time required, I will take a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

var car : Vehicle = Car()
var bicycle: Vehicle = Bicycle()

var distance : Double = 150.0

travelDistance(distance: distance, using: car)
travelDistance(distance: distance, using: bicycle)


// #Checkpoint8
protocol Building {
    var rooms: Int { get }
    var cost: Double { get }
    var agent: String { get set }
    func saleSummary() -> Void
}

extension Building {
    func saleSummary() {
        print("the buiding of rooms: \(rooms) will be sold by \(agent) at cost: \(cost)")
    }
}

struct House : Building {
    var rooms: Int = 3
    var cost: Double = 1_000_000.00
    var agent: String = "Salmon"
}

struct Office : Building {
    var rooms: Int = 16
    var cost: Double = 10_000_000.00
    var agent: String = "Mayor"
}

func settleSale(for building: Building) {
    building.saleSummary()
}

let office : Building = Office()
let house : Building = House()

settleSale(for: house)
settleSale(for: office)
