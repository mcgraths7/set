//
//  Card.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

struct Card {
    private var color: String
    private var pattern: String
    private var shading: String
    private var number: Int
    
    private var isSelected = false
    private var isMatched = false
    
    
    init(color: String, pattern: String, shading: String, number: Int) {
        self.color = color
        self.pattern = pattern
        self.shading = shading
        self.number = number
    }
    
    mutating func select() {
        self.isSelected = !self.isSelected
    }
    mutating func match() {
        self.isMatched = true
    }
    
    private static func checkColorMatch(first: Card, second: Card, third: Card) -> Bool {
        if (first.color == second.color && second.color == third.color) || (first.color != second.color && second.color != third.color) {
            return true
        } else {
            return false
        }
    }
    
    private static func checkPatternMatch(first: Card, second: Card, third: Card) -> Bool {
        if (first.pattern == second.pattern && second.pattern == third.pattern) || (first.pattern != second.pattern && second.pattern != third.pattern) {
            return true
        } else {
            return false
        }
    }
    
    private static func checkShadingMatch(first: Card, second: Card, third: Card) -> Bool {
        if (first.shading == second.shading && second.shading == third.shading) || (first.shading != second.shading && second.shading != third.shading) {
            return true
        } else {
            return false
        }
    }
    
    private static func checkNumberMatch(first: Card, second: Card, third: Card) -> Bool {
        if (first.number == second.number && second.number == third.number) || (first.number != second.number && second.number != third.number) {
            return true
        } else {
            return false
        }
    }
    
    static func checkMatch(first: Card, second: Card, third: Card) -> Bool {
        if checkColorMatch(first: first, second: second, third: third) && checkPatternMatch(first: first, second: second, third: third) && checkShadingMatch(first: first, second: second, third: third) && checkNumberMatch(first: first, second: second, third: third) {
            return true
        } else {
            return false
        }
    }
}
