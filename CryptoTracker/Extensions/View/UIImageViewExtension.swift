//
//  UIImageViewExtension.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    private func setImageToDownloaded(url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
        }.resume()
    }
    
    func setImageToDownloaded(from link: String, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        setImageToDownloaded(url: url, contentMode: mode)
    }
}
