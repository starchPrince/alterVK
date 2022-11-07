//
//  GalleryCell.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 07.11.2022.
//

import UIKit

class GalleryCell: UICollectionViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.image = nil
    }
    
    func configure(image: UIImage?, index: Int) {
        
        photoImageView.image = image
        if index % 2 == 0 {
            backView.backgroundColor = UIColor.magenta
        } else {
            backView.backgroundColor = UIColor.cyan
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
