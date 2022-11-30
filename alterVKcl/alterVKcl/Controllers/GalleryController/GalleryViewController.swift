//
//  GalleryViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 02.11.2022.
//

import UIKit

class GalleryViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var sourceArray = ["veta1", "veta2", "veta3"]
    let reuseIdentifier = "reuseIdentifier"
    let photoVC = "photoVC"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
        
    }
    
}







