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
    private var timers = [TimerCell] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(TimerCollectionViewCell.nib, forCellWithReuseIdentifier: TimerCollectionViewCell.reuseID)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.timers = Services.timersProvider.items()
        self.collectionView.reloadData()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        for timer in self.timers {
            timer.stopTimer()
        }
    }
    

}

// MARK: UICollectionViewDataSource & UICollectionViewDelegate
extension BenchmarkViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return timers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TimerCollectionViewCell.reuseID, for: indexPath) as? TimerCollectionViewCell else {
            fatalError("Bad cell")
        }
        let timer = self.timers[indexPath.row]
        cell.update(time: "\(timer.seconds)", color: .green)
        timer.passCell(cell: cell)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let timer = self.timers[indexPath.row]
        if !timer.isActive {
            timer.startTimer()
        } else {
            timer.stopTimer()
        }
    }
    
}

