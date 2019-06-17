//
//  ComponentView.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/7/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class ComponentView: UIView {
    
    //MARK: - code calls to xib
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    //MARK: - storyboard calls to xib
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
//        let bundle = Bundle.main
//        let nib = bundle.loadNibNamed("ComponentView", owner: self, options: nil)
//        if let view = nib?[0] as? UIView
//        {
//            //self.view = view
//            addSubview(view)
//        }
        print(#function)
    }

}
