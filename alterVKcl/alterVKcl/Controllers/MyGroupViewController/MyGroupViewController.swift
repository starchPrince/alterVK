//
//  MyGroupViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

class MyGroupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sourceArray = ["Test Group"]
    let customCellReuseIdentifier = "customCellReuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 50
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customCellReuseIdentifier)
    }
}
