//
//  Zombie.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import Foundation
import UIKit

class Zombie: Villager {
    
    // Initialization
    override init(name: String, age: Int, image: UIImage) {
        super.init(name: name, age: age, image: image)
        self.species = "Zombie"
    }
    
    // Special Behavior
    func eatBrain() {
        print("\(self.name) the \(species) is eating... brain")
    }
}
