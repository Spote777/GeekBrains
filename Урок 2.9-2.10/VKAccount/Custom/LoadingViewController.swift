//
//  LoadingViewController.swift
//  VKAccount
//
//  Created by Заруцков Павел on 09.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var firstPointLoad: UILabel!
    @IBOutlet weak var secondPointLoad: UILabel!
    @IBOutlet weak var thirdPointLoad: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goToTapBarController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        animatePointsLoad()
    }
    
    func animatePointsLoad() {
        
        firstPointLoad.transform = CGAffineTransform(translationX: 1, y: 10)
        secondPointLoad.transform = CGAffineTransform(translationX: 1, y: 10)
        thirdPointLoad.transform = CGAffineTransform(translationX: 1, y: 10)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.3,
                       options: [.autoreverse, .repeat],
                       animations: {
                        self.firstPointLoad.transform = .identity
                        self.firstPointLoad.alpha = 0.2
        },
                       completion: nil)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.6,
                       options: [.autoreverse, .repeat],
                       animations: {
                        self.secondPointLoad.transform = .identity
                        self.secondPointLoad.alpha = 0.2
        },
                       completion: nil)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.9,
                       options: [.autoreverse, .repeat],
                       animations: {
                        
                        self.thirdPointLoad.transform = .identity
                        self.thirdPointLoad.alpha = 0.2
        },
                       completion: nil)
    }
    
    
    func goToTapBarController() {
        
// Откладываем на 3 секунды:
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            let vc = self.storyboard!.instantiateViewController(withIdentifier: "TapBar") as UIViewController
            self.present(vc, animated: true, completion: nil)
        }
    }
}
