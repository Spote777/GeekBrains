//
//  NewsTableViewCell.swift
//  VKAccount
//
//  Created by Заруцков Павел on 31.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var newsAvatar: UIImageView!
    @IBOutlet weak var newsName: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    @IBOutlet weak var newsText: UILabel!
    @IBOutlet weak var newsPicture: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
