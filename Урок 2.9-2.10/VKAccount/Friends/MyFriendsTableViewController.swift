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
    
    var filterFriend = [Friends]() {
        didSet {
            sections = Array(Set(filterFriend.map { $0.friendName.prefix(1).uppercased() }
            )).sorted()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterFriend = friends
        
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        searchBar.delegate = self
        self.tableView.tableHeaderView = searchBar
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterSearch(text: searchText)
        tableView.reloadData()
    }
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func filterSearch(text: String?) {
        if let text = text, text.isEmpty == false {
            filterFriend = friends.filter { $0.friendName.lowercased().contains(text.lowercased())
            }
        } else {
            filterFriend = Array(friends)
        }
    }
    
    private func item(for section: Int) -> [Friends] {
        return filterFriend.filter { $0.friendName.uppercased().starts(with: sections[section])
            
        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item(for: section).count
    }
    
    //высота header
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    // кол-во ячеек в таблице
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    //Первая буква имени в Header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    //добавляем header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 35))
        view.backgroundColor = .init(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        
        let label = UILabel()
        label.frame = CGRect(x: 30, y: 8, width:15, height:15)
        label.text = sections[section]
        label.textColor = UIColor.black
        view.addSubview(label)
        self.view.addSubview(view)
        return view
    }
    
    //первый буквы имен справа
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sections
    }
    
    //присваеваем аутлетам фото и текст из массива
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! MyFriendsTableViewCell
        cell.configure(friend: item(for: indexPath.section)[indexPath.row])
        return cell
    }
    //дергаем массив с фото
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let photoFriendsController = segue.destination as? FriendPhotoCollectionViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                let friend = item(for: indexPath.section)[indexPath.row]
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
