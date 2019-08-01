//
//  TimerCell.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 7/4/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import Foundation


class TimerCell {
    
    public var seconds: Int
    private var timer: Timer?
    public var isActive: Bool
    public var cell: TimerCollectionViewCell?
    
    init() {
        seconds = 0
        isActive = false
        timer = Timer()
    }
    
    func startTimer(){
        isActive = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
    }
    @objc func counter() {
        seconds += 1
        updateLabel()
    }
    func stopTimer(){
        timer?.invalidate()
        seconds = 0
        isActive = false
        updateLabel()
    }
    
    func passCell(cell: TimerCollectionViewCell?) {
        self.cell = cell
        updateLabel()
    }
    
    func updateLabel() {
        cell?.update(time: "\(seconds)", color: .green)
    }
}
