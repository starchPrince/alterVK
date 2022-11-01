//
//  MyGroupViewController+TableViewDataSource.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

extension MyGroupViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: customCellReuseIdentifier, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        
        
        cell.configure(image: nil, text: sourceArray[indexPath.row])
        
    return cell
    }
}
