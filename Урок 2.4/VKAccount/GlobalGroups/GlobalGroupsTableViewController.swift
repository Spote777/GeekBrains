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
    
    // MARK: - Table view data source
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 0
    //    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
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
