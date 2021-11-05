//
//  CocoaViewController.swift
//  AppIOS
//
//  Created by Liza Sapsaj on 11/5/21.
//

import UIKit

class CocoaViewController: UIViewController {

 
    @IBAction func buttonPress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
