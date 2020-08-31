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

let makeNews = [modelNews(newsAvatar: nil, newsName: "здесь будет название", newsDate: "здесь будет дата" , newsText: "текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст", newsPhoto: nil),
                modelNews(newsAvatar: nil, newsName: "второе название", newsDate: "вторая дата", newsText: "ОЧЕНЬ МНОГО ТЕКСТА", newsPhoto: nil)]
