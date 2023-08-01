//
//  ViewController.swift
//  month3_project_1
//
//  Created by Elizabeth Serykh on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var IdTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    @IBOutlet weak var SingInButton: UIButton!
    
    @IBAction func signIn(_ sender: Any) {
        var flag = false
        if IdTextField.text?.isEmpty ?? true {
            IdTextField.layer.borderColor = UIColor.red.cgColor
            IdTextField.layer.borderWidth = 1
            IdTextField.placeholder = "Fill  the information"
        } else {
            IdTextField.layer.borderColor = UIColor.white.cgColor
            flag = true
        }
        
        if PasswordTextField.text?.isEmpty ?? true {
            PasswordTextField.layer.borderColor = UIColor.red.cgColor
            PasswordTextField.layer.borderWidth = 1
            PasswordTextField.placeholder = "Fill the information"

        } else {
            PasswordTextField.layer.borderColor = UIColor.white.cgColor
            flag = true
        }
        
        if flag {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            present(vc, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

