//
//  ThirdFeedViewController.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/17/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class ThirdFeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toRoot(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
