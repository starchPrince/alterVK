//
//  MyGroupViewController.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

class MyGroupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var myGroupArray = [Group]()
    let customCellReuseIdentifier = "customCellReuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 50
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTebleView()
        NotificationCenter.default.addObserver(self, selector: #selector(addGroup(_:)), name: Notification.Name("groupSelectedNotification"), object: nil)
    }
    
    
    
    
    @objc func addGroup(_ notification: Notification) {
  
        guard let groupObject = notification.object as? Group else {return}
        //print(groupObject.name)
        if myGroupArray.contains(where: {sourceGroup in
            sourceGroup.name == groupObject.name
        }) { print("Такая группа уже есть") }
        else { myGroupArray.append(groupObject)
            tableView.reloadData()
        }
    }
    
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
