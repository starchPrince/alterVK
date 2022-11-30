//
//  GalleryViewController+CollectionViewDelegate.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 30.11.2022.
//

import UIKit

extension GalleryViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("index \(String(indexPath.item))")
        
        //Попытка сделать открывающееся во весь экран фото
        let fullPhotoVC = storyboard?.instantiateViewController(withIdentifier: photoVC) as! photoViewController
        fullPhotoVC.setup(with: sourceArray[indexPath.item])
        self.navigationController?.pushViewController(fullPhotoVC, animated: true)
        
    }
}
