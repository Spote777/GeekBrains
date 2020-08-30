//
//  Group.swift
//  VKAccount
//
//  Created by Заруцков Павел on 06.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

struct GroupData: Equatable {
    let groupAvatar: UIImage?
    let groupName: String
    init(_ groupName: String, _ groupAvatar: UIImage?) {
        self.groupName = groupName
        self.groupAvatar = groupAvatar
    }
}

var globalGroup: [GroupData] = [
    GroupData("Apple", UIImage(named: "Apple")),
    GroupData("Swift", UIImage(named: "Swift")),
    GroupData("BigGeek", UIImage(named: "BigGeek")),
    GroupData("GeekBrains", UIImage(named: "GeekBrains"))
]
