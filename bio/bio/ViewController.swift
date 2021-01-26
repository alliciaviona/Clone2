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
    
    // Object Needed (for demo)
    let system = System()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblClonerName.text = "full name"
        lblClonerAge.text = "0"
        lblClonerEvilness.text = "0"
        clonerImage.image = #imageLiteral(resourceName: "profile_picture")
       
        lblOriginalName.text = "full name"
        lblOriginalAge.text = "0"
        lblOriginalSpecies.text = "species"
        originalImage.image = #imageLiteral(resourceName: "profile_picture")
        
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


}

extension ViewController {
    func adjustTheme() {
        header.backgroundColor = system.color
        btnEdit.setTitleColor(system.color, for: .normal)
        btnClone.backgroundColor = system.color
    }
}
