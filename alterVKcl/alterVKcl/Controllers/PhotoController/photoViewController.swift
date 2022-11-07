//
//  photoViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 07.11.2022.
//

import UIKit

class photoViewController: UIViewController {
    
    
    @IBOutlet weak var photoImage: UIImageView!
    
    private var imageName: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImage.image = UIImage(named: imageName)
    }

    func setup(with name: String) {
        imageName = name
    }
    
}
