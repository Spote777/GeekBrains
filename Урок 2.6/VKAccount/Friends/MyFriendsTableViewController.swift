//
//  MyFriendsTableViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 06.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {
    
    var friends = makeFriends
    var dict = [String: [String]]()
    var sectionTitle = [String]()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for friend in friends {
            let charKey = String(friend.friendSurname.prefix(1))
            if var charValues = dict[charKey] {
                charValues.append(friend.friendSurname)
                dict[charKey] = charValues
            } else {
                dict[charKey] = [friend.friendSurname]
            }
        }
        sectionTitle = [String](dict.keys)
        sectionTitle = sectionTitle.sorted(by: {$1 < $0})
        
        //self.tableView.sectionHeaderHeight = 50
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return friends.count
//        let friendKey = sectionTitle[section]
//        if let friendValue = dict[friendKey] {
//            return friendValue.count
//        }
//        return 0
    }
    
    //присваеваем аутлетам фото и текст из массива
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! MyFriendsTableViewCell
        let friend = friends[indexPath.row]
        cell.surnameFriend.text = friend.friendSurname
        cell.nameFriend.text = friend.friendName
        cell.photoFriend.image = friend.friendAvatar
        return cell
    }
    //дергаем массив с фото
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let photoFriendsController = segue.destination as? FriendPhotoCollectionViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                let friend = friends[indexPath.row]
                photoFriendsController.friend = friend.friendPhoto as? [UIImage]
            }
        }
    }
    //удаляем друга
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            friends.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sectionTitle
    }
    //добавляем header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 35))
        view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.2)
        
        let label = UILabel()
        label.frame = CGRect(x: 25, y: 12, width:15, height:15)
        label.text = sectionTitle[section]
        label.textColor = UIColor.black
        view.addSubview(label)
        //self.view.addSubview(view)
        return view
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
}

