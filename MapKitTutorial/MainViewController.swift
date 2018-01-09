

import UIKit

class MainViewController : UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var searchField: UITextField!
    
    var searchValue = String()
  
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("TextField should begin editing method called")
        
        performSegue(withIdentifier: "openSearch", sender: self)
        return false;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load.............called......")
        searchField.text? = searchValue
        self.searchField.delegate = self
    }
}
