//
//  CryptocurrencyInterfaces.swift
//  CryptoTracker
//
//  Created by merengue on 17/03/2018.
//  Copyright (c) 2018 merengue. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum CurrenciesNavigationOption {
    case currencyDetail(currency: Currency)
}

protocol CurrenciesWireframeInterface: WireframeInterface {
    func navigate(to option: CurrenciesNavigationOption)
}

protocol CurrenciesViewInterface: ViewInterface {
    func updateCurrencies(_ currencies: [Currency])
}

protocol CurrenciesPresenterInterface: PresenterInterface {
    func loadCurrencies()
    
    func openCurrencyDetail(for currency: Currency)
}

protocol CurrenciesInteractorInterface: InteractorInterface {
    func loadCurrencies(onResult: @escaping ([Currency]) -> Void)
}

