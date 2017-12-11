//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Tiago Santos on 10/12/17.
//  Copyright © 2017 Tiago Santos. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var itemPriceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateButton
        itemPriceTxt.inputAccessoryView = calculateButton
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        itemPriceTxt.text = ""
    }
    
    @objc func calculate() {
        guard let wageTxt = wageTxt.text else { return }
        guard let priceTxt = itemPriceTxt.text else { return }
        
        guard let wageTxtAsDouble = Double(wageTxt) else { return }
        guard let priceTxtAsDouble = Double(priceTxt) else { return }
        
        let result = Wage.getHours(forWage: wageTxtAsDouble, andPrice: priceTxtAsDouble)
        
        result > 1 ? (hoursLbl.text = "hours") : (hoursLbl.text = "hour")
        
        view.endEditing(true)
        
        resultLbl.isHidden = false
        hoursLbl.isHidden = false
        
        resultLbl.text = String(result)
    }
}

