//
//  Profile.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/7/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class Profile: UIViewController, StatusBarConfigurable {
    
    var statusBarStyle: UIStatusBarStyle = .default

    override func viewDidLoad() {
        super.viewDidLoad()
        addBehaviors(behaviors: [ColorChangeBehavior()])
    }

    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }

}



    


