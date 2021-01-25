//
//  System.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import Foundation
import UIKit

class System {
    
    // attribute
    var color: UIColor
    
    // initialization
    init() {
        color = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    }
    
    // behavior
    func changeColor(){
        if color == #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)  {
            color = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        } else {
            color = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        }
    }
    
}
