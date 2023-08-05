//
//  ViewController.swift
//  month3_project_1
//
//  Created by Elizabeth Serykh on 01.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {


    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var idTextField: UITextField!
    

    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var singInButton: UIButton!
    
    @IBOutlet weak var singUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
  
    
    @IBAction func singUp(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(vc, animated: true)
      
        
    }
    

    @IBAction func singIn(_ sender: Any) {
        
             var flag = false
             if idTextField.text?.isEmpty ?? true {
                 idTextField.layer.borderColor = UIColor.red.cgColor
                 idTextField.layer.borderWidth = 1
                 idTextField.placeholder = "Fill the information"
             } else {
                 idTextField.layer.borderColor = UIColor.white.cgColor
                 flag = true
             }
             
             if passwordTextField.text?.isEmpty ?? true {
                 passwordTextField.layer.borderColor = UIColor.red.cgColor
                 passwordTextField.layer.borderWidth = 1
                 passwordTextField.placeholder = "Fill the information"

             } else {
                 passwordTextField.layer.borderColor = UIColor.white.cgColor
                 flag = true
             }
             
             if flag {
                 let vc = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
                 present(vc, animated: true)
             }
        
    }
    
    
    @IBAction func forgotPwd(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NewPasswordViewController") as! NewPasswordViewController
        navigationController?.pushViewController(vc, animated: true)
      
        
        
    }
    
    


}

