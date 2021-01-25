//
//  Wizard.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import Foundation
import UIKit

class Wizard: Villager {
    
    // Initialization
    override init(name: String, age: Int, image: UIImage ) {
        super.init(name: name, age: age, image: image)
        self.species = "Wizard"
    }
    
    // Special Behavior
    func castSpell() {
        print("\(self.name) the \(species) is casting a spell.")
    }
}
