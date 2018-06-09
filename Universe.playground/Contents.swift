//: Playground - noun: a place where people can play

import Foundation

class Entity : DharmaProtocol {
    
    // properties
    var consciousness: Float
    var nature: String
    
    //initializer
    init(withConsciousness consciousness: Float, andNature nature: String) {
        self.consciousness = consciousness
        self.nature = nature
    }
    
    // methods
    func mutatingDharma(byVirtueOf nature: String) -> String {
        return ("The nature of this \(self) is to \(nature)")
    }
}

protocol DharmaProtocol {
    mutating func mutatingDharma(byVirtueOf nature: String) -> String
}



struct Karma {
    var good: Double
    var bad: Double
    
    init(good: Double, bad: Double) {
        self.good = good
        self.bad = bad
    }
}


// Create non-living Entities
let water = Entity(withConsciousness: 0.0, andNature: "wet")
print("Water is a \(water)")
print(water.mutatingDharma(byVirtueOf: water.nature))


let fire = Entity(withConsciousness: 0.0, andNature: "burn")
print("Fire is a \(fire)")
print(fire.mutatingDharma(byVirtueOf: fire.nature))


// A Living Entity
class Jiva : Entity {
    // Jiva is a Living Entity which has Karma
    var karma: Karma
    
    init(withConsciousness consciousness: Float, andNature nature: String, andKarma karma: Karma) {
        self.karma = karma
        super.init(withConsciousness: consciousness, andNature: nature)
    }
    
    func mutatingDharma(byVirtueOf nature: String, andKarma karma: Karma) -> String {
        if self.karma.good < 49.0 && self.karma.bad > 51.0 {
            self.nature = "serve material nature"
        }
        return ("The nature of this \(self) is to \(self.nature)")
    }
    
}

extension DharmaProtocol where Self: Jiva {
    mutating func mutatingDharma(byVirtueOf nature: String, andKarma karma: Karma) -> String {
        if self.karma.good < 49.0 && self.karma.bad > 51.0 {
            self.nature = "serve material nature"
        }
        return ("The nature of this \(self) is to \(self.nature)")
    }
}

let human = Jiva(withConsciousness: 100.0, andNature: "serve others", andKarma: .init(good: 5.7, bad: 3.9))
let human2 = Jiva(withConsciousness: 100.0, andNature: "love", andKarma: .init(good: 5.3, bad: 243.2))

print("This Human is a \(human)")
print("This human has accumulated \(human.karma.good) points of Good Karma")
print("This human has accumulated \(human.karma.bad) points of Bad Karma")
print("This human is at a Consciousness Level of \(human.consciousness).")
print(human.mutatingDharma(byVirtueOf: human.nature, andKarma: human.karma))

print("This Human is a \(human2)")
print("This human has accumulated \(human2.karma.good) points of Good Karma")
print("This human has accumulated \(human2.karma.bad) points of Bad Karma")
print("This human is at a Consciousness Level of \(human2.consciousness).")
print(human2.mutatingDharma(byVirtueOf: human2.nature, andKarma: human2.karma))


