//
//  News.swift
//  VKAccount
//
//  Created by Заруцков Павел on 31.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

struct modelNews {
    let newsAvatar: UIImage?
    let newsName: String
    let newsDate: String
    let newsText: String
    let newsPhoto: UIImage?
    
}

let makeNews = [modelNews(newsAvatar: UIImage(named: "Apple"), newsName: "Apple", newsDate: "25.03.2020" , newsText: "Apple releases sixth betas of iOS 14, iPadOS 14, tvOS 14, watchOS 7.", newsPhoto: UIImage(named: "NewsApple")),
                
                modelNews(newsAvatar: UIImage(named: "BigGeek"), newsName: "Big Geek", newsDate: "02.09.2020", newsText: "Пользователь Reddit сделал курительную трубку к 73-летию Шварценеггера с головой Терминатора.В комментарии к записи пришёл сам Арнольд и попросил продать ему её, но парень отказался от денег, а в замен получил фото с подарком.", newsPhoto: UIImage(named: "NewsBigGeek"))
]
