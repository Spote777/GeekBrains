//
//  MyFriendsTableViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 06.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class MyFriendsTableViewController: UITableViewController, UISearchBarDelegate {
    
    var friends = makeFriends
    var sections: [String] = []
    var newMyFriends: [[Friends]] = []
    var filtered: [Friends] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sectionChar(friends)
        
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        searchBar.delegate = self
        self.tableView.tableHeaderView = searchBar
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText != "" {
            filtered = friends.filter({ (text) -> Bool in
                let tmp:NSString = text.friendName as NSString
                let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
                return range.location != NSNotFound
            })
            
            sectionChar(filtered)
            
        } else {
            sectionChar(friends)
        }
        
        self.tableView.reloadData()
    }
    
    private func sectionChar(_ users: [Friends]) {
        var char: String
        newMyFriends = []
        sections = []
        
        for user in users {
            char = String(user.friendName.first!)
            if (sections.firstIndex(of: char) == nil) {
                sections.append(char)
                newMyFriends.append([user])
            } else {
                newMyFriends[sections.firstIndex(of: char)!].append(user)
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newMyFriends[section].count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    //первый буквы имен справа
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sections
    }
    
    //присваеваем аутлетам фото и текст из массива
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! MyFriendsTableViewCell
        let friend = friends[indexPath.row]
        cell.nameFriend?.text = friend.friendName
        cell.photoFriend?.image = friend.friendAvatar
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
    //добавляем header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 35))
        view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.2)
        
        let label = UILabel()
        label.frame = CGRect(x: 25, y: 12, width:15, height:15)
        label.text = sections[section]
        label.textColor = UIColor.black
        view.addSubview(label)
        //self.view.addSubview(view)
        return view
    }
}

