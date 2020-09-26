//
//  User.swift
//  VKAccount
//
//  Created by Заруцков Павел on 06.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

struct Friends {
    let friendName: String
    let friendAvatar: UIImage?
    var friendPhoto: [UIImage?]
}


let makeFriends =  [Friends(friendName: "Павел",
                            friendAvatar: UIImage(named: "Avatar1"),
                            friendPhoto: [UIImage(named: "Avatar1"), UIImage(named: "man2"), UIImage(named: "man1")]),
                    Friends(friendName: "Светлана", 
                            friendAvatar: UIImage(named: "Avatar2"),
                            friendPhoto: [UIImage(named: "Avatar2"), UIImage(named: "woman1"), UIImage(named: "woman2")])
]


