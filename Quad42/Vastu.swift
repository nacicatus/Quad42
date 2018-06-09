//
//  Vastu.swift
//  Quad42
//
// Vastu - that which has existence
//  Created by Sauron on 09/06/18.
//  Copyright © 2018 Sauron. All rights reserved.
//

import Foundation

class Vastu: AnyObject {
    
    
    
    // properties
    var consciousness: Float
    var nature: String
    
    
    //initializer
    init(withConsciousness consciousness: Float, andNature nature: String) {
        self.consciousness = consciousness
        self.nature = nature
        
    }
    
    
    // functions
    func dharma(_: String) {
        // dharma is the sine qua non of the vastu
        // dharma may be nitya-dharma (eternal concomitant factor)
        // dharma may be modified by Karma or contact with other Vastus to become naimittika dharma (temporary function)
        print("The dharma of this \(self) is \(nature)")
        
        
        
    }
    
}
