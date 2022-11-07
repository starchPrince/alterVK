//
//  AllGroupViewController+TableViewDelegate.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

extension AllGroupViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCustomTableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(groupArray[indexPath.row].name)
        NotificationCenter.default.post(name: NSNotification.Name("groupSelectedNotification"), object: groupArray[indexPath.row]) 
        
        
    }
    
}
