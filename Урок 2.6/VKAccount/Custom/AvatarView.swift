//
//  Avatar.swift
//  VKAccount
//
//  Created by Заруцков Павел on 21.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class AvatarView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = CGFloat(avatarSettings.cornerRadius)
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 0.5
        
    }
}
