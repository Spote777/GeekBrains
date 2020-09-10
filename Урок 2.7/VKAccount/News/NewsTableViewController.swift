//
//  NewsTableViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 31.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var megaNews:[modelNews] = makeNews
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return megaNews.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsTableViewCell
        let news = megaNews[indexPath.row]
        cell.newsAvatar.image = news.newsAvatar
        cell.newsName.text = news.newsName
        cell.newsDate.text = news.newsDate
        cell.newsText.text = news.newsText
        cell.newsPicture.image = news.newsPhoto
        
        return cell
    }
}
