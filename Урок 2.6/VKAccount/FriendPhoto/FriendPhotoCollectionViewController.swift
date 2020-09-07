//
//  FriendPhotoCollectionViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 06.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit


class FriendPhotoCollectionViewController: UICollectionViewController {
    
    var friend: [UIImage]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //кол-во ячеек в коллекции
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return friend!.count
    }
    //добавляем массив фото в коллекцию
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! FriendPhotoCollectionViewCell
        cell.photosFriend.image = friend![indexPath.row]
     
        
        return cell
    }
    
}
