//
//  SettingSingletone.swift
//  VKAccount
//
//  Created by Заруцков Павел on 22.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//
import UIKit

struct AvatarSettings {
    
    let tableViewHeight = 50
    var cornerRadius : CGFloat {
        
        get {
            return CGFloat((tableViewHeight) / 2)
        }
    }
}

let avatarSettings = AvatarSettings()
