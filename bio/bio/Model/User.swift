//
//  User.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import Foundation
import UIKit


struct User {
    // attribute
    var name: String
    var age: Int
    var evilness: Int
    var profile_picture: UIImage
    
    mutating func increaseEvilness() {
        evilness += 1
    }
    
}
