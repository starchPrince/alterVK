//
//  GalleryViewController+CollectionViewDelegateFlowLayout.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 30.11.2022.
//

import UIKit

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.width / 3 - 10
        return CGSize(width: cellWidth, height: cellWidth)
        
    }
}
