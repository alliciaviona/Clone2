//
//  SecondViewController.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var btnChangeHeaderColor: UIButton!
    
    // Object needed
    var system = System()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pressChangeHeaderColor(_ sender: Any) {
        system.changeColor()
    }
    

}
