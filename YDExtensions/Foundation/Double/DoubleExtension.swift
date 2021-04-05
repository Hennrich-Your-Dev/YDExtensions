//
//  DoubleExtension.swift
//  YDExtensions
//
//  Created by Douglas Hennrich on 05/04/21.
//

import Foundation

public extension Double {
  var formatedPrice: String? {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = Locale(identifier: "pt_BR")

    return formatter.string(from: NSNumber(value: self))
  }
}
