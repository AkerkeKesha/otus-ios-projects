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

        // Do any additional setup after loading the view.
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    @IBAction func toRoot(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
