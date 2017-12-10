//
//  Wage.swift
//  Window-Shopper
//
//  Created by Tiago Santos on 10/12/17.
//  Copyright © 2017 Tiago Santos. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
