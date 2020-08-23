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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        testView.layer.shadowColor = UIColor.black.cgColor
//        testView.layer.shadowOpacity = 0.5
//        testView.layer.shadowRadius = 8
//        testView.layer.shadowOffset = CGSize.zero
 //       testView.layer.masksToBounds = false
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }
    
    //присваеваем аутлетам фото и текст из массива
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! MyFriendsTableViewCell
        let friend = friends[indexPath.row]
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
    
    
}
