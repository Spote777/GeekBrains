//
//  LoginCustomButton.swift
//  VKAccount
//
//  Created by Заруцков Павел on 13.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import Foundation
import UIKit

class LoginCustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfig()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setConfig()
    }
    
    func setConfig() {
        backgroundColor = UIColor.white
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 0.5
        layer.cornerRadius = 4.0
    }
    
    func touchIn() {
        UIView.animate(withDuration: 0.1, delay: 0, options: [.allowUserInteraction, .curveEaseIn], animations: { self.transform = .init(scaleX: 0.9, y: 0.9)}, completion: nil)
    }
    
    func touchEnd(){
        UIView.animate(withDuration: 0.1, delay: 0, options: [.allowUserInteraction, .curveEaseOut], animations: {self.transform = .identity}, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        touchIn()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        touchEnd()
    }
}
