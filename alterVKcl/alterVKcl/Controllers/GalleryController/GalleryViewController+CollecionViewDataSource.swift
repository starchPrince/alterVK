//
//  GalleryViewController+CollecionViewDataSource.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 30.11.2022.
//

import  UIKit

extension GalleryViewController: UICollectionViewDataSource {
    
    
    
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "GalleryCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    
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
