//
//  SinglePhotoViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 07.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class SinglePhotoViewController: UIViewController {
    
    @IBOutlet weak var imageViewPreview: UIImageView!
    var currentCountPhoto = 0
    var allPhotos:[UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer = UIPanGestureRecognizer(target: self, action: #selector(onPan))
        view.addGestureRecognizer(recognizer)
        
        imageViewPreview.image = allPhotos[currentCountPhoto]
        
    }
    
    // MARK: - Animator
    var interactiveAnimator: UIViewPropertyAnimator!
    
    @objc func onPan(_ recognizer: UIPanGestureRecognizer) {
        
        switch recognizer.state {
        case .began:
            interactiveAnimator?.startAnimation()
            interactiveAnimator = UIViewPropertyAnimator(
                duration: 0.5,
                curve: .easeIn,
                animations: {
                    self.imageViewPreview.alpha = 1
                    self.imageViewPreview.transform = .init(scaleX: 1.5, y: 1.5)
            })
            interactiveAnimator.pauseAnimation()
            
        case .changed:
            let translation = recognizer.translation(in: self.view)
            interactiveAnimator.fractionComplete = abs(translation.x / 100)
            self.imageViewPreview.transform = CGAffineTransform(translationX: translation.x, y: 0)
            
        case .ended:
            interactiveAnimator.stopAnimation(true)
            if recognizer.translation(in: self.view).x < 0 { // проверка в какую сторону движется палец (лево/право)
                if  currentCountPhoto < allPhotos.count - 1  { // проверка, что фотка будет в массиве и не делать счетчик больше
                    self.currentCountPhoto += 1
                }
            } else {
                if currentCountPhoto != 0 {  // проверка, что фотка будет в массиве и не делать счетчик меньше
                    self.currentCountPhoto -= 1
                }
            }
            interactiveAnimator.addAnimations {
                self.imageViewPreview.transform = .identity
                self.imageViewPreview.alpha = 1
            }
            interactiveAnimator?.startAnimation()
            
        default: break
        }
        imageViewPreview.image = allPhotos[currentCountPhoto]
        
    }
    
}


