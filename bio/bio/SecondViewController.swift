//
//  SecondViewController.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    var system = System()
    
    @IBOutlet weak var btnChangeHeaderColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressChangeHeaderColor(_ sender: Any) {
        system.changeColor()
    }
    
}
