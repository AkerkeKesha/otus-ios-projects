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
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .green
        clipsToBounds = true
        layer.cornerRadius = 4
        timerLabel.font = UIFont.systemFont(ofSize: 30)
    }
    
    func update(time: String) {
        timerLabel.text = time
    }

    
}
