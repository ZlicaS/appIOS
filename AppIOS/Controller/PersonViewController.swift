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
    
    @IBOutlet weak var lblLastName2: UILabel!
    @IBOutlet weak var lblName1: UILabel!
    
    @IBOutlet weak var lblAge2: UILabel!
    var selectedPerson: Person?
    
    var dl = DataListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName1.text = selectedPerson?.name
        lblLastName2.text = selectedPerson?.lastName
        lblAge2.text = String(selectedPerson!.age)
        lblGender.text = lblGender.text! + "  Male"
        
        
    }
    
    
    
    @IBAction func exitButtonPressed(_ snder: Any) {
        dl.reload(selected: selectedPerson!)
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
