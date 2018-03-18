//
//  CurrenciesRequest.swift
//  CryptoTracker
//
//  Created by merengue on 17/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation

class CurrenciesRequest: APIRequest {
    var method = RequestType.GET
    var path = "v1/ticker"
    var parameters = [String: String]()
}
