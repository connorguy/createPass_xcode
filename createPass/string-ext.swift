//
//  string-ext.swift
//  createPass
//
//  Created by Connor Guy on 11/11/17.
//  Copyright © 2017 Connor Guy. All rights reserved.
//

import Foundation

extension String {
    subscript (r: CountableClosedRange<Int>) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let endIndex = self.index(startIndex, offsetBy: r.upperBound - r.lowerBound)
        return String(self[startIndex...endIndex])
    }
    
    subscript (bounds: CountableRange<Int>) -> String {
        let startIndex =  self.index(self.startIndex, offsetBy: bounds.lowerBound)
        let endIndex = self.index(startIndex, offsetBy: bounds.upperBound - bounds.lowerBound)
        return String(self[startIndex..<endIndex])
    }
}
