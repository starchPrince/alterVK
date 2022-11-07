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
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "GalleryCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    



}

extension GalleryViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return sourceArray.count

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! GalleryCell
        cell.configure(image: UIImage(named: sourceArray[indexPath.item]) , index: indexPath.item)
        return cell
        
    }


}

extension GalleryViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("index \(String(indexPath.item))")
        
        //Попытка сделать открывающееся во весь экран фото
        let fullPhotoVC = storyboard?.instantiateViewController(withIdentifier: photoVC) as! photoViewController
        fullPhotoVC.setup(with: sourceArray[indexPath.item])
        self.navigationController?.pushViewController(fullPhotoVC, animated: true)
        
    }
}



extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.width / 3 - 10
        return CGSize(width: cellWidth, height: cellWidth)
        
    }

    
}
