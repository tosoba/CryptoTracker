//
//  CurrencyHistoryRequest.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation

class CurrencyHistoryRequest: APIRequest {
    var method = RequestType.GET
    var path = "data/histoday"
    var parameters = [String: String]()
    
    init(with parameters: [String: String]) {
        self.parameters = parameters
    }
}
