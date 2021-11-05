//
//  PersonViewController.swift
//  AppIOS
//
//  Created by Liza Sapsaj on 11/5/21.
//

import UIKit

protocol PersonViewControllerDelegate : class {
    func titleDidChange( row : Int, to title: String)
}

class PersonViewController: UIViewController {
    
    weak var delegate: PersonViewControllerDelegate?
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    @IBOutlet weak var lblLastName2: UILabel!
    @IBOutlet weak var lblName1: UILabel!
    
    @IBOutlet weak var lblAge2: UILabel!
    var selectedPerson: Person?
    var selectedRow:Int?
    
    @IBOutlet weak var lblGender2: UILabel!
    var dl = DataListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName1.text = selectedPerson?.name
        lblLastName2.text = selectedPerson?.lastName
        lblAge2.text = String(selectedPerson!.age)
        
        let e = Person.Gender.male
        print(e.rawValue)
        lblGender2.text = e.rawValue
        
        
    }
    
    
    
    @IBAction func exitButtonPressed(_ snder: Any) {
        delegate?.titleDidChange(row: selectedRow!, to: String(selectedPerson!.age))
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func removeYear(_ sender: UIButton) {
        DispatchQueue.main.async {
            
            if(self.selectedPerson!.age<=0){
                self.alert()
            }else{
                self.selectedPerson?.age -= 1
                self.lblAge2.text = String(self.selectedPerson!.age)
            }
            
        }
        
    }
    func alert(){
        let alert = UIAlertController(title: "Alert", message: "Age must be in range 0-100", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addYear(_ sender: UIButton) {
        
        DispatchQueue.main.async {
            if(self.selectedPerson!.age>=100){
                self.alert()
            }else{
                self.selectedPerson?.age += 1
                self.lblAge2.text = String(self.selectedPerson!.age)
            }
        }
        
        
    }
    
}
