//
//  TestViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 25.10.2022.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func PressButton(_ sender: Any) {
        textField.text = "pressed Button"
        self.textField.backgroundColor = UIColor.systemTeal
        
    }
    


}
