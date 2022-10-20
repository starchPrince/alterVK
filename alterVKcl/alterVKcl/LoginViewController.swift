//
//  LoginViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 20.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    let toYellowSegue = "fromLoginToYellow"
    
    

    @IBAction func pressLoginButton(_ sender: Any) {
        
        guard let login = loginTextField.text,
              let password = passwordTextField.text
        else{return}
        
        if login.isEmpty || password.isEmpty {
            loginTextField.backgroundColor = UIColor.tintColor
            passwordTextField.backgroundColor = UIColor.tintColor
            
            return
        }
        
        if login == "Админ" && password == "Админ" {
            performSegue(withIdentifier: toYellowSegue, sender: nil) }
    }
}
