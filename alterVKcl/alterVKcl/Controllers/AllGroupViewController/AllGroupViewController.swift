//
//  AllGroupViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

class AllGroupViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var groupArray = [Group]()
    let customCellReuseIdentifier = "customCellReuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 50
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        groupFillData()
    }

}
