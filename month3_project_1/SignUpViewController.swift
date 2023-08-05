//
//  SingUpViewController.swift
//  month3_project_1
//
//  Created by Elizabeth Serykh on 04.08.2023.
//

import UIKit

class SignUpViewController: UIViewController {

   
    @IBOutlet weak var fullNameTextField: UITextField!
    
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    @IBOutlet weak var singInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
    }
    
    func check (tf: UITextField) -> Bool {
        if tf.text?.isEmpty ?? true {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 1
            tf.placeholder = "Fill the information"
            return false
        } else {
            tf.layer.borderColor = UIColor.white.cgColor
            return true
        }
    }
    
    @IBAction func singUp(_ sender: Any) {
        
        var flag = true
        
        if !check(tf: fullNameTextField) {flag = false}
        if !check(tf: mobileNumberTextField)  {flag = false}
        if !check(tf: EmailTextField)  {flag = false}
        if !check(tf: userNameTextField)  {flag = false}
        if !check(tf: passwordTextField)  {flag = false}
        if !check(tf: confirmPasswordTextField)  {flag = false}
     
        
        if flag {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            present(vc, animated: true)
        }
        
    }
    
    @IBAction func singIn(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(vc, animated: true)
      
        
    }
    
  

    
}
