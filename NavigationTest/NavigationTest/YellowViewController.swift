//
//  YellowViewController.swift
//  NavigationTest
//
//  Created by Сергей Буланов on 22.10.2022.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("yellow created")
    }
    
    deinit {
        print("yellow deinit")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func popToRootPressed(_ sender: Any) {
//        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
}
