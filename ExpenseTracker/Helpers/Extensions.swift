//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Michael Zhao on 1/3/22.
//

import Foundation

extension Double {
    
    var formattedCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
    
}
