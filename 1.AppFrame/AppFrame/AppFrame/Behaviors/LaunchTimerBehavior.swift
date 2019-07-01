//
//  LaunchTimerBehavior.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 7/1/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

// MARK: - Launch Timer
class LaunchTimerBehavior: ViewControllerLifecycleBehavior {
    
    private var timer: Timer = Timer()
    
    func afterAppearing(_ viewController: UIViewController) {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(runTimed),
            userInfo: nil,
            repeats: true)
    }
    
    @objc func runTimed() {
        print(Date())
    }
    
    func beforeDisappearing(_ viewController: UIViewController) {
        timer.invalidate()
    }
}

