//
//  ViewController.swift
//  tableViewTest
//
//  Created by Сергей Буланов on 31.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "customReuseCellIdentifier")
       
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(40)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customReuseCellIdentifier", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
                
        
        if indexPath.row % 2 == 0 {
            cell.customLabel.text = "Cell Number \(String(indexPath.row))"
 
        } else {
                cell.customImageView.image = UIImage(systemName: "square")
      
        }
        
    return cell
    }


}

