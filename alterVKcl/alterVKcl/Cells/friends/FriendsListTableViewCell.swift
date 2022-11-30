//
//  FriendsListTableViewCell.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 08.11.2022.
//

import UIKit

protocol FriendsListTableViewCellDelegate: AnyObject {
    func cellPressed(friend: Friend)
}


class FriendsListTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    weak var delegate: FriendsListTableViewCellDelegate?
    var savedFriend: Friend?
    
    
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
        self.savedFriend = friend
    }
    
    
    @IBAction func pressImageViewButton(_ sender: Any) {
        
        let sourceFrame = avatarImageView.frame
        UIView.animate(withDuration: 2) {[weak self] in
            guard let self = self else {return}
            self.avatarImageView.frame = CGRect.zero} completion: { isSuccess in
                if isSuccess {
                    UIView.animate(withDuration: 3,
                                   delay: 0,
                                   usingSpringWithDamping: 0.7,
                                   initialSpringVelocity: 0,
                                   animations: { [weak self] in
                        guard let self = self else {return}
                        self.avatarImageView.frame = sourceFrame })
                    {[weak self] isSuccessfully in
                        if isSuccessfully,
                           let self = self,
                           let friend = self.savedFriend {
                            self.delegate?.cellPressed(friend: friend)}
                    }
            }
        }
        
    }
    
}
