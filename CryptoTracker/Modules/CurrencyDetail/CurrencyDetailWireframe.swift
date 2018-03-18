//
//  CurrencyDetailWireframe.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright (c) 2018 merengue. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class CurrencyDetailWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(name: "CurrencyDetail", bundle: nil)

    // MARK: - Module setup -

    func configureModule(with viewController: CurrencyDetailViewController) {
        let interactor = CurrencyDetailInteractor()
        let presenter = CurrencyDetailPresenter(wireframe: self, view: viewController, interactor: interactor)
        viewController.presenter = presenter
    }

    // MARK: - Transitions -

    func show(with transition: Transition, animated: Bool = true, currency: Currency) {
        let moduleViewController = _storyboard.instantiateViewController(ofType: CurrencyDetailViewController.self)
        moduleViewController.currency = currency
        configureModule(with: moduleViewController)

        show(moduleViewController, with: transition, animated: animated)
    }
}

// MARK: - Extensions -

extension CurrencyDetailWireframe: CurrencyDetailWireframeInterface {

    func navigate(to option: CurrencyDetailNavigationOption) {
    }
}
