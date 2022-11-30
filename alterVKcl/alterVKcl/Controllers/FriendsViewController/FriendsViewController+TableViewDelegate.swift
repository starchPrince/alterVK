//
//  FriendsViewController+TableViewDelegate.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

extension FriendsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCustomTableViewCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toGallerySegue,
        let friendsPhotoArray = sender as? [String],
           let destination = segue.destination as? GalleryViewController {
            destination.sourceArray = friendsPhotoArray
        }
    }
    
    
    // Что бы не совершался сразу переход, а работала анимация
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        if let friendsPhotoArray = friendsArray[indexPath.item].photoArray {
//            performSegue(withIdentifier: toGallerySegue, sender: friendsPhotoArray)}
//        }
}
