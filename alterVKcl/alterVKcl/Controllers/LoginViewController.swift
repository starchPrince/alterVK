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
    @IBOutlet weak var scrollView: UIScrollView!
    
    let toYellowSegue = "fromLoginToYellow"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onPressed), name: Notification.Name("pressLoginButton"), object: nil)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)
    }
    
    
    @objc func onTap(_ recognizer: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @objc func keyboardDidShow(_ notification: Notification) {
        let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
        guard let keyboardHeight = keyboardSize?.height else {return}
        
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeight + 50, right: 0)
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardDidHide(_ notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    @objc func onPressed() {

        loginTextField.backgroundColor = UIColor.cyan
        passwordTextField.backgroundColor = UIColor.cyan
        
}

       

    
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    @IBAction func pressLoginButton(_ sender: Any) {

//        let testViewController = TestViewController(nibName: "TestViewController", bundle: nil)
//        testViewController.modalPresentationStyle = .fullScreen
//        self.present(testViewController, animated: true, completion: nil)
        
        
        
       NotificationCenter.default.post(name: Notification.Name("pressLoginButton"), object: nil)
        
        
        
//        guard let login = loginTextField.text,
//              let password = passwordTextField.text
//        else{return}
//
//
//        if login == "Админ" && password == "Админ" {
//            performSegue(withIdentifier: toYellowSegue, sender: nil) }
   }
        
        
}
