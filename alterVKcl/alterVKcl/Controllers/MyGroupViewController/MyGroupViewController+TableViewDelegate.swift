//
//  MyGroupViewController+TableViewDelegate.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 01.11.2022.
//

import UIKit


extension MyGroupViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCustomTableViewCell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {

            let alertController = UIAlertController(title: "Удаление группы", message: "Вы точно-точно уверены что хотите удалить группу?", preferredStyle: .actionSheet)
            let actionYes = UIAlertAction(title: "Точно-точно", style: .default) {[weak self] _ in
                self?.myGroupArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            alertController.addAction(actionYes)
            
            let actionNo = UIAlertAction(title: "Не надо", style: .cancel)
            alertController.addAction(actionNo)
            
            self.present(alertController, animated: true, completion: nil)
            //            myGroupArray.remove(at: indexPath.row)
//            //tableView.reloadData()
//            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    
    
}
