//
//  ChangeColorBehavior.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 7/1/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

protocol StatusBarConfigurable: UIViewController {
    var statusBarStyle: UIStatusBarStyle { get set }
}


// MARK: - Change Background color and status Bar color

struct ColorChangeBehavior: ViewControllerLifecycleBehavior {
    
    func beforeAppearing(_ viewController: UIViewController) {
        viewController.view.backgroundColor = .black
        viewController.navigationController?.navigationBar.barStyle = .black
        viewController.tabBarController?.tabBar.barStyle = .black
        
        if let vc = viewController as? StatusBarConfigurable {
            vc.statusBarStyle = .lightContent
            vc.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    func beforeDisappearing(_ viewController: UIViewController) {
        viewController.view.backgroundColor = .white
        viewController.navigationController?.navigationBar.barStyle = .default
        viewController.tabBarController?.tabBar.barStyle = .default
        
        if let vc = viewController as? StatusBarConfigurable {
            vc.statusBarStyle = .default
            vc.setNeedsStatusBarAppearanceUpdate()
        }
    }
}
/* Тонкий момент заключается в том, что контрол профиля находится сразу в 3 контролах-контейнерах - UINaviagationViewController, UITabBarViewController и UISplitViewController. У каждого из этих контейнеров есть свойство childForStatusBarStyle, которое возвращает child контрол, ответсвенный за стиль статус бара. Чтобы в текущей реализации все заработатло необходимо добавить экстеншены для этих контейнеров и в них возвращать контрол профиля.
 */
extension UISplitViewController {
    open override var childForStatusBarStyle: UIViewController? {
        return viewControllers.first
    }
}

extension UITabBarController {
    open override var childForStatusBarStyle: UIViewController? {
        return selectedViewController
    }
}

extension UINavigationController {
    open override var childForStatusBarStyle: UIViewController? {
        return viewControllers.last
    }
}

