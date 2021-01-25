//
//  ViewController.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import UIKit

class ViewController: UIViewController {

    // Cloner Identity
    @IBOutlet weak var lblClonerName: UILabel!
    @IBOutlet weak var lblClonerAge: UILabel!
    @IBOutlet weak var lblClonerEvilness: UILabel!
    @IBOutlet weak var clonerImage: UIImageView!
    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var btnChangeColor: UIButton!
    
    // Original Object
    @IBOutlet weak var originalImage: UIImageView!
    @IBOutlet weak var lblOriginalName: UILabel!
    @IBOutlet weak var lblOriginalAge: UILabel!
    @IBOutlet weak var lblOriginalSpecies: UILabel!
    
    // Cloned Object
    @IBOutlet weak var clonedImage: UIImageView!
    @IBOutlet weak var lblClonedName: UILabel!
    @IBOutlet weak var lblClonedAge: UILabel!
    @IBOutlet weak var lblClonedSpecies: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

