//
//  ShadowView.swift
//  VKAccount
//
//  Created by Заруцков Павел on 22.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    @IBInspectable var shadowRadius: CGFloat = CGFloat(15) {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowOpasity: Float = 1 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowColor : UIColor = UIColor.black {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowOffset : CGSize = CGSize.zero {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = avatarSettings.cornerRadius
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpasity
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        
    }
    
}
