//
//  GlobalGroupsTableViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 06.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class GlobalGroupsTableViewController: UITableViewController {
    
    var globalGroups:[GroupData] = globalGroup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return globalGroups.count
    }
    // //присваеваем аутлетам фото и текст из массива
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GlobalGroupCell", for: indexPath) as! GlobalGroupsTableViewCell
        cell.globalGroupName.text = globalGroups[indexPath.row].groupName
        cell.globalGroupAvatar.image = globalGroups[indexPath.row].groupAvatar
        
        
        return cell
    }
    
}
