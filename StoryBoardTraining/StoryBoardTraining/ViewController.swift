//
//  ViewController.swift
//  StoryBoardTraining
//
//  Created by Сергей Буланов on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var blueButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func pressBlueButton(_ sender: Any) {
        print("Blue button pressed")
        helloLabel.backgroundColor = UIColor.systemPink
        helloLabel.text = "lable"
    }
}

