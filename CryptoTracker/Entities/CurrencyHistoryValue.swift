//
//  CurrencyHistoryValue.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation

struct CurrencyHistoryValue: Codable {
    let time: Int
    let close: Double
    let high: Double
    let low: Double
    let open: Double
    let volumeFrom: Double
    let volumeTo: Double
    
    private enum CodingKeys: String, CodingKey {
        case time
        case close
        case high
        case low
        case open
        case volumeFrom = "volumefrom"
        case volumeTo = "volumeto"
    }
}
