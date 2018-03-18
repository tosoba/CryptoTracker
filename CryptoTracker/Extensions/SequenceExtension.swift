//
//  SequenceExtension.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation

extension Sequence where Iterator.Element == Currency {
    func sortedByPriceUSD() -> [Currency] {
        return self.sorted(by: { (currency1, currency2) -> Bool in
            let currency1Value = Double(currency1.priceUSD)
            let currency2Value = Double(currency2.priceUSD)
            return currency1Value! > currency2Value!
        })
    }
    
    func sortedByChange1H() -> [Currency] {
        return self.sorted(by: { (currency1, currency2) -> Bool in
            let currency1Value = Double(currency1.change1H)
            let currency2Value = Double(currency2.change1H)
            return currency1Value! > currency2Value!
        })
    }
    
    func sortedByChange24H() -> [Currency] {
        return self.sorted(by: { (currency1, currency2) -> Bool in
            let currency1Value = Double(currency1.change24H)
            let currency2Value = Double(currency2.change24H)
            return currency1Value! > currency2Value!
        })
    }
    
    func sortedByChange7D() -> [Currency] {
        return self.sorted(by: { (currency1, currency2) -> Bool in
            let currency1Value = Double(currency1.change7D)
            let currency2Value = Double(currency2.change7D)
            return currency1Value! > currency2Value!
        })
    }
}
