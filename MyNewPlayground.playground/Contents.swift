////: Playground - noun: a place where people can play
//
//import Foundation
//
//class Entity : NSObject {
//    // properties
//    var name: String
//    var consciousness: Float
//    var inherentNature: String
//    var karma: Karma
//    
//    // initializer
//    init(withName name: String, withConsciousness consciousness: Float, withItsOwnInherentNature inherentNature: String, andKarmaScores karma: Karma) {
//        self.name = name
//        self.consciousness = consciousness
//        self.inherentNature = inherentNature
//        self.karma = karma
//    }
//    
//    // Dharma
//    func renderService(toAnotherEntity servedEntity: LivingEntity, using inherentNature: String) -> Karma {
//        print("The dharma of this \(self) is \(inherentNature)")
//        
//        if self.isKind(of: LivingEntity.self) {
//            // increment karma score
//            self.karma.good += 1.0
//        }
//        return self.karma
//    }
//    
//}
//
//
//class LivingEntity : Entity {
//
//    .
//
////class NonLivingEntity: Entity {
////    
////}
//
//struct Karma {
//    var good: Double
//    var bad: Double
//    
//    init(good: Double, bad: Double) {
//        self.good = good
//        self.bad = bad
//    }
//}
//
//
//let light = Entity(withName: "light", withConsciousness: 0.0, withItsOwnInherentNature: "illuminate", andKarmaScores: Karma(good: 0.0, bad: 0.0))
//
////let human1 = LivingEntity(withName: "Adam", withConsciousness: 50.0, withItsOwnInherentNature: "serve", andKarmaScores: Karma(good: 50.0, bad: 50.0))
////let human2 = LivingEntity(withName: "Attila", withConsciousness: 50.0, withItsOwnInherentNature: "serve", andKarmaScores: Karma(good: 3.0, bad: 78.0))
//
//
////print(human1.renderService(toAnotherEntity: human2, using: "serve"))
//
//
//
//
