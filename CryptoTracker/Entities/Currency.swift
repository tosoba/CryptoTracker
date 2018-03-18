//
//  Currency.swift
//  CryptoTracker
//
//  Created by merengue on 11/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation

struct Currency: Codable {
    let name: String
    let symbol: String
    let rank: String
    let priceUSD: String
    let priceBTC: String
    let marketCapUSD: String
    let availableSupply: String
    let change1H: String
    let change24H: String
    let change7D: String
    let lastUpdated: String
    
    static let baseSymbolURL = "https://res.cloudinary.com/dxi90ksom/image/upload/"
    
    private enum CodingKeys: String, CodingKey {
        case name
        case symbol
        case rank
        case priceUSD = "price_usd"
        case priceBTC = "price_btc"
        case marketCapUSD = "market_cap_usd"
        case availableSupply = "available_supply"
        case change1H = "percent_change_1h"
        case change24H = "percent_change_24h"
        case change7D = "percent_change_7d"
        case lastUpdated = "last_updated"
    }
}
