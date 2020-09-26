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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goPhoto" {
            
            // ссылка объект на контроллер с которого переход
            guard let photosFriend = segue.destination as? SinglePhotoViewController else { return }
            
            // индекс нажатой ячейки
            if let indexPath = collectionView.indexPathsForSelectedItems?.first {
                photosFriend.allPhotos = friend! //фотки
                photosFriend.currentCountPhoto = indexPath.row // indexPath[0][1] если не использовать ?.first выше
                
                //            // Даём понять, что sender это ячейка класса FriendPhotoCollectionViewCell
                //            let cell: FriendPhotoCollectionViewCell  = sender as! FriendPhotoCollectionViewCell
                //
                //            // Получает объект image из текущей ячейки
                //            let image = cell.photosFriend.image
                //
                //            // Даём понять, что destinationViewController это контроллер класса SinglePhotoViewController
                //            let previewVC: SinglePhotoViewController = segue.destination as! SinglePhotoViewController
                //
                //            // Задаём контроллеру изображение с текущей ячейки
                //            previewVC.images = friend
            }
        }
    }
}

