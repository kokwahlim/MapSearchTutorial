//
//  MainViewController.swift
//  MapKitTutorial
//
//  Created by limkokwah on 08/01/2018.
//  Copyright © 2018 Thorn Technologies. All rights reserved.
//

import UIKit

class MainViewController : UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var searchField: UITextField!
    
 
  
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("TextField should begin editing method called")
         performSegue(withIdentifier: "openSearch", sender: self)
        return false;
    }

    @IBAction func search(_ sender: Any) {
        performSegue(withIdentifier: "openSearch", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "openSearch"){
            let vc = segue.destination as! ViewController
           
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchField.delegate = self
    }
}
