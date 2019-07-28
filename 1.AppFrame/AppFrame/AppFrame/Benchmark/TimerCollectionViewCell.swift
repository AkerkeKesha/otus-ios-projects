//
//  TimerCollectionViewCell.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/28/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class TimerCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = String(describing: TimerCollectionViewCell.self)
    static let nib = UINib(nibName: String(describing: TimerCollectionViewCell.self), bundle: nil)
  
    @IBOutlet weak var timerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func update(time: String, color: UIColor) {
        timerLabel.text = time
        backgroundColor = color
    }

    
}
