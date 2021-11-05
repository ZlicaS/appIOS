//
//  PersonViewController.swift
//  AppIOS
//
//  Created by Liza Sapsaj on 11/5/21.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    var selectedPerson: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = lblName.text! + " " + selectedPerson!.name
        lblLastName.text = lblLastName.text! + " " + selectedPerson!.lastName
        
        lblAge.text = lblAge.text! +  " " + String(selectedPerson!.age)
        
        lblGender.text = lblGender.text! + "  Male"
        
        
    }
    
    
    @IBAction func exitButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
  
    
}
