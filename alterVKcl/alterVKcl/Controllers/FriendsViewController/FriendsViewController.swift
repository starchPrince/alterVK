//
//  FriendsViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var friendsArray = [Friend]()
    let customCellReuseIdentifier = "customCellReuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 50
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        fillFriendsArray()
    }
    
}


