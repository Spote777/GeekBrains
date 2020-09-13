//
//  LoginButton.swift
//  VKAccount
//
//  Created by Заруцков Павел on 10.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

@IBDesignable class LoginButton: UIButton {
    
    // инициализация при вызове из кода
    override init(frame: CGRect) {
        super.init(frame: frame)
        tapOnView() // обработка нажатия на вьюху
        // setupAvatarView()
    }
    
    // инициализация при использовании в storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tapOnView() // обработка нажатия на вьюху
        // setupAvatarView()
    }
    
    // обработка тапа по кнопке
    func tapOnView() {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        recognizer.numberOfTapsRequired = 1 // сколько нажатий нужно
        self.addGestureRecognizer(recognizer) //добавить наблюдение
    }
    
    // анимация при тапе на кнопку
    @objc func onTap(gestureRecognizer: UITapGestureRecognizer) {
        let original = self.transform // начальное состояние вьюхи
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 0.1, options: [ .autoreverse], animations: {
                        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8) // меняем размер вьюхи анимировано
        }, completion: { _ in
            self.transform = original // возврат состояния вьюхи на сохраненное значение
            //self.transform = .identity // возврат состояния вьюхи
        })
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 0.5
        self.layer.backgroundColor = UIColor.white.cgColor
        
    }
}
