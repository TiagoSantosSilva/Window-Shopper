//
//  CurrencyTextField.swift
//  Window-Shopper
//
//  Created by Tiago Santos on 10/12/17.
//  Copyright © 2017 Tiago Santos. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        placeholder = "Your hourly wage"
        self.font = UIFont(name: "Avenir", size: 17.0)
        guard let placeholderUnWrapped = placeholder else { return }
        
        let place = NSAttributedString(string: placeholderUnWrapped, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
