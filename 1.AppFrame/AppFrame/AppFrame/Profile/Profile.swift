//
//  Profile.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/7/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class Profile: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addBehaviors(behaviors: [ColorChangeBehavior()])
    }
    
    //MARK: - Status Bar Changes
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }

}
