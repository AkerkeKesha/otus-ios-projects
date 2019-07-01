//
//  BenchmarkViewController.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/7/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class BenchmarkViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addBehaviors(behaviors: [LaunchTimerBehavior()])
        collectionView.register(TimerCollectionViewCell.nib, forCellWithReuseIdentifier: TimerCollectionViewCell.reuseID)
    }

}

// MARK: UICollectionViewDataSource

extension BenchmarkViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        return cell
    }
    
    
}

// MARK: UICollectionViewDelegate
extension BenchmarkViewController: UICollectionViewDelegate {
    
}
