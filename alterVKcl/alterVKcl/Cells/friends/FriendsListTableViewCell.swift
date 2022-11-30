//
//  FriendsListTableViewCell.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 08.11.2022.
//

import UIKit

class FriendsListTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarImageView.image = nil
        nameLabel.text = nil
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.layer.cornerRadius = 20
        avatarImageView.layer.cornerRadius = 20
        backView.layer.shadowColor  = UIColor.black.cgColor
        backView.layer.shadowRadius = 15
        backView.layer.shadowOffset = CGSize(width: 20, height: 20)
        backView.layer.shadowOpacity = 0.8
    }
    
    func configure(image: UIImage?, text: String?) {
        avatarImageView.image = image
        nameLabel.text = text
    }
    
    func configure(friend: Friend) {
        if let imageName = friend.avatar {
            avatarImageView.image = UIImage(named: imageName) }
            nameLabel.text = friend.name
    }
    
}
