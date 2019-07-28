//
//  TimersProvider.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 7/25/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import Foundation


struct TimersProvider {
    
    func items() -> [TimerCell] {
        var array = [TimerCell]()
        for _ in 0..<105 {
            array.append(TimerCell())
        }
        return array
    }
}
