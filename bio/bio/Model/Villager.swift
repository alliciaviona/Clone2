//
//  Villager.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import Foundation
import UIKit

class Villager {
    // attribute
    var name: String
    var age: Int
    var species: String
    var image: UIImage
    
    // initialize
    init(name:String, age:Int, image: UIImage) {
        self.name = name
        self.age = age
        self.image = image
        self.species = "Villager"
    }
    
    // behavior
    func eat() {
        print("\(self.name) the \(species) is eating...")
    }
    
    func sleep() {
        print("\(self.name) the \(species) is sleeping...")
    }
    
    func walk() {
        print("\(self.name) the \(species) is walking...")
    }
    
}
