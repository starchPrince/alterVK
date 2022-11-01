//
//  AllGroupViewController+FillData.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit
extension AllGroupViewController {
    
    func groupFillData() {
        
        let group1 = Group(name: "NBA", avatar: "nba")
        let group2 = Group(name: "NFL", avatar: "nfl")
        let group3 = Group(name: "NHL", avatar: "nhl")
        
        groupArray.append(group1)
        groupArray.append(group2)
        groupArray.append(group3)
    }
    
}
