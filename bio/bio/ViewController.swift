//
//  ViewController.swift
//  bio
//
//  Created by Allicia Viona Sagi on 25/01/21.
//

import UIKit

class ViewController: UIViewController {

    // Theme
    @IBOutlet weak var header: UIView!
    @IBOutlet weak var btnClone: UIButton!
    
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
    
    // Object needed
    var user = User(name: "Evil Cat", age: 8, evilness: 10,profile_picture: #imageLiteral(resourceName: "profile_picture"))
    let original = Villager(name: "John", age: 17, image: #imageLiteral(resourceName: "villager"))
    var cloned: Villager?
    
    // Universal object
    var system = System()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        cloned = original
        
        
        lblClonerName.text = user.name
        lblClonerAge.text = "\(user.age)"
        lblClonerEvilness.text = "\(user.evilness)"
        clonerImage.image = user.profile_picture
       
        lblOriginalName.text = original.name
        lblOriginalAge.text = "\(original.age)"
        lblOriginalSpecies.text = original.species
        originalImage.image = original.image
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        adjustTheme()
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_to" {
            let vc = segue.destination as? SecondViewController
            vc?.system = self.system
        }
    }
    
    @IBAction func pressClone(_ sender: Any) {
        user.increaseEvilness()
        lblClonerEvilness.text = "\(user.evilness)"
        
        lblClonedName.text = cloned?.name
        lblClonedAge.text = "\(cloned!.age)"
        lblClonedSpecies.text = cloned?.species
        clonedImage.image = cloned?.image
    }
    
    @IBAction func pressPaint(_ sender: Any) {
        system.changeColor()
        header.backgroundColor = system.color
        btnEdit.setTitleColor(system.color, for: .normal)
        btnClone.backgroundColor = system.color
    }
    
}

extension ViewController {
    func adjustTheme() {
        header.backgroundColor = system.color
        btnEdit.setTitleColor(system.color, for: .normal)
        btnClone.backgroundColor = system.color
    }
}

