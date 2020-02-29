//
//  SwiftyAdsConsentStatus.swift
//  SwiftyAdsDemo
//
//  Created by Dominik Ringler on 29/02/2020.
//  Copyright © 2020 Dominik Ringler. All rights reserved.
//

import Foundation

public enum SwiftyAdsConsentStatus {
    case personalized
    case nonPersonalized
    case adFree
    case underAge
    case unknown
    
    public var hasConsent: Bool {
        switch self {
        case .personalized, .nonPersonalized:
            return true
        default:
            return false
        }
    }
}
