//
//  ColorButton.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 5/29/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

@IBDesignable class ColorButton: UIButton {
    
    @IBInspectable var bgColor: UIColor = UIColor.white {
        didSet {
            self.backgroundColor = bgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
