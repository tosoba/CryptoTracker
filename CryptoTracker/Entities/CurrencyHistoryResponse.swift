//
//  CurrencyHistoryResponse.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation

struct ConversionType: Codable {
    let type: String
    let conversionSymbol: String
    
    private enum CodingKeys: String, CodingKey {
        case type
        case conversionSymbol
    }
}

struct CurrencyHistoryResponse: Codable {
    let response: String
    let type: Int
    let aggregated: Bool
    let currencyHistoryValues: [CurrencyHistoryValue]
    let timeTo: Int
    let timeFrom: Int
    let firstValueInArray: Bool
    let conversionType: ConversionType
    
    private enum CodingKeys: String, CodingKey {
        case response = "Response"
        case type = "Type"
        case aggregated = "Aggregated"
        case currencyHistoryValues = "Data"
        case timeTo = "TimeTo"
        case timeFrom = "TimeFrom"
        case firstValueInArray = "FirstValueInArray"
        case conversionType = "ConversionType"
    }
}
