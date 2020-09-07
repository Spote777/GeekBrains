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
    let friendSurname: String
    let friendAvatar: UIImage?
    let friendPhoto: [UIImage?]
}


let makeFriends =  [Friends(friendName: "Павел", friendSurname: "Волков",
                            friendAvatar: UIImage(named: "man1"),
                            friendPhoto: [UIImage(named: "man1"), UIImage(named: "man2")]),
                    
                    Friends(friendName: "Светлана", friendSurname: "Петрова",
                            friendAvatar: UIImage(named: "woman1"),
                            friendPhoto: [UIImage(named: "woman1"), UIImage(named: "woman2")])
]


