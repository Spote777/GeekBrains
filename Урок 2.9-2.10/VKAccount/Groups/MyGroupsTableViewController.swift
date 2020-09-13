//
//  MyGroupsTableViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 06.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {
    
    var groups = [GroupData] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    //кнопка добавления группы и проверка добавленна ли она ранее
    @IBAction func addGroup(segue: UIStoryboardSegue){
        if segue.identifier == "addGroup" {
            guard let globalGroupsController = segue.source as? GlobalGroupsTableViewController else {return}
            
            if let indexPath = globalGroupsController.tableView.indexPathForSelectedRow{
                let group = globalGroupsController.globalGroups[indexPath.row]
                if !groups.contains(group){
                    groups.append(group)
                }
                tableView.reloadData()
            }
            
        }
    }
    //кол-во строк в таблице
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groups.count
    }
    
    //присваеваем аутлетам фото и текст из массива
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! MyGroupsTableViewCell
        cell.nameGroup.text = groups[indexPath.row].groupName
        cell.avatarGroup.image = groups[indexPath.row].groupAvatar
        
        return cell
    }
    
    
    //удаляем группу
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
