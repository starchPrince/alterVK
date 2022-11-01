//
//  FriendsViewController+fillData.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit

extension FriendsViewController {
    
    
    func fillFriendsArray() {
        let friend1 = Friend(name: "Veta", avatar: "veta", photoArray: ["veta1", "veta2", "veta3"])
        let friend2 = Friend(name: "Lord K", avatar: "kazaxys", photoArray: ["kazax1", "kazax2", "kazax3"])
        
        friendsArray.append(friend1)
        friendsArray.append(friend2)
    }
    
    
}
