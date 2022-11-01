//
//  FriendsViewController+TableViewDataSource.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

extension FriendsViewController: UITableViewDataSource {
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customCellReuseIdentifier)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: customCellReuseIdentifier, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        
        
        cell.configure(friend: friendsArray[indexPath.row])
        
    return cell
    }
}
