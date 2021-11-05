//
//  WebViewController.swift
//  AppIOS
//
//  Created by Liza Sapsaj on 11/5/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://www.google.com/?client=safari")else{
            return
        }
        webView.load(URLRequest(url: url))
            
        }

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
