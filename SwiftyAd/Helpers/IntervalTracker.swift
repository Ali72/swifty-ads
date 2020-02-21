//
//  IntervalTracker.swift
//  SwiftyAd
//
//  Created by Dominik Ringler on 24/05/2019.
//  Copyright © 2019 Dominik. All rights reserved.
//

import Foundation

public protocol SwiftyAdIntervalTrackerType: AnyObject {
    func canShow(forInterval interval: Int?) -> Bool
}

final class IntervalTracker {
    private var intervalCounter = 0
}

extension IntervalTracker: SwiftyAdIntervalTrackerType {
    
    func canShow(forInterval interval: Int?) -> Bool {
        guard let interval = interval else {
            return true
        }
        
        intervalCounter += 1
        
        guard intervalCounter >= interval else {
            return false
        }
        
        intervalCounter = 0
        return true
    }
}
