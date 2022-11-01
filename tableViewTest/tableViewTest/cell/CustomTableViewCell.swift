//
//  CustomTableViewCell.swift
//  tableViewTest
//
//  Created by Сергей Буланов on 31.10.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var customLabel: UILabel!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        customLabel.text = nil
        customImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
}
