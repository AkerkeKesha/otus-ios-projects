//
//  BenchmarkViewController.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/7/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class BenchmarkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addBehaviors(behaviors: [LaunchTimerBehavior()])
    }
    // MARK: - Timer actions

}
