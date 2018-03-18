//
//  CurrencyTableViewCell.swift
//  CryptoTracker
//
//  Created by merengue on 11/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {

    @IBOutlet weak var change7DLabel: UILabel!
    @IBOutlet weak var change24HLabel: UILabel!
    @IBOutlet weak var change1HLabel: UILabel!
    @IBOutlet weak var priceUSDLabel: UILabel!
    @IBOutlet weak var symbolAndNameLabel: UILabel!
    @IBOutlet weak var currencyImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateTextColors() {
        setTextColor(for: change1HLabel, change7DLabel, change24HLabel)
    }
    
    private func setTextColor(for labels: UILabel...) {
        for label: UILabel in labels {
            guard let text = label.text else { return }
            let value = Double(text.prefix(upTo: text.index(before: text.endIndex)))
            guard let val = value else { return }
            if val > 0.0 {
                label.textColor = UIColor.green
            } else if val < 0.0 {
                label.textColor = UIColor.red
            }
        }
    }
}
