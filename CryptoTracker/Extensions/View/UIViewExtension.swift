//
//  UIViewExtension.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func constraintAnchors(to view: UIView, topConstant: CGFloat = 0, bottomConstant: CGFloat = 0, leadingConstant: CGFloat = 0, trailingConstant: CGFloat = 0) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: view.topAnchor, constant: topConstant).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottomConstant).isActive = true
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingConstant).isActive = true
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailingConstant).isActive = true
    }
}
