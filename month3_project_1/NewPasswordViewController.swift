//
//  NewPasswordViewController.swift
//  month3_project_1
//
//  Created by Elizabeth Serykh on 04.08.2023.
//

import UIKit

class NewPasswordViewController: UIViewController {

    
    @IBOutlet weak var signImage: UIImageView!
    
    @IBOutlet weak var newPasswordTextField: UITextField!
    
    @IBOutlet weak var confirmNewPasswordTextField: UITextField!
    
    
    @IBOutlet weak var confirmButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func confirm(_ sender: Any) {
        
        var flag = false

        
        if newPasswordTextField.text?.isEmpty ?? true {
            newPasswordTextField.layer.borderColor = UIColor.red.cgColor
            newPasswordTextField.layer.borderWidth = 1
            newPasswordTextField.placeholder = "Fill the information"
        } else {
            newPasswordTextField.layer.borderColor = UIColor.white.cgColor
            flag = true
        }
        
        if confirmNewPasswordTextField.text?.isEmpty ?? true {
            confirmNewPasswordTextField.layer.borderColor = UIColor.red.cgColor
            confirmNewPasswordTextField.layer.borderWidth = 1
            confirmNewPasswordTextField.placeholder = "Fill the information"

        } else {
            confirmNewPasswordTextField.layer.borderColor = UIColor.white.cgColor
            flag = true
        }
        
        if flag && newPasswordTextField.text == confirmNewPasswordTextField.text{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            present(vc, animated: true)
        } else {
            
            if newPasswordTextField.text != confirmNewPasswordTextField.text  {
                
                signImage.layer.isHidden = false}
            
        }
   
}
    
}
