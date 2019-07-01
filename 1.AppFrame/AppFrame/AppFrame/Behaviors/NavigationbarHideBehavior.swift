//
//  NavigationbarHideBehavior.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 7/1/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

//MARK: - Hide Navigation Bar
struct HideNavigationBarBehavior: ViewControllerLifecycleBehavior {
    func beforeAppearing(_ viewController: UIViewController) {
        viewController.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func beforeDisappearing(_ viewController: UIViewController) {
        viewController.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

// MARK: - Show Navigation bar
struct ShowNavigationBarBehavior: ViewControllerLifecycleBehavior {
    
    func beforeAppearing(_ viewController: UIViewController) {
        viewController.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func beforeDisappearing(_ viewController: UIViewController) {
        viewController.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}
