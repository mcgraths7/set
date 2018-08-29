//
//  Card.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

struct Card: Hashable {
    private(set) var color: String
    private(set) var pattern: String
    private(set) var shading: String = "empty"
    private(set) var number: String
    
    private static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs == rhs
    }
    
    var hashValue: Int {
        return color.hashValue ^ pattern.hashValue ^ shading.hashValue ^ number.hashValue
    }
    
    private static func checkColorMatch(first: Card, second: Card, third: Card) -> Bool {
        return (first.color == second.color && second.color == third.color) || (first.color != second.color && second.color != third.color)
    }
    
    private static func checkPatternMatch(first: Card, second: Card, third: Card) -> Bool {
        return (first.pattern == second.pattern && second.pattern == third.pattern) || (first.pattern != second.pattern && second.pattern != third.pattern)
    }
    
    private static func checkShadingMatch(first: Card, second: Card, third: Card) -> Bool {
        return (first.shading == second.shading && second.shading == third.shading) || (first.shading != second.shading && second.shading != third.shading)
    }
    
    private static func checkNumberMatch(first: Card, second: Card, third: Card) -> Bool {
        return (first.number == second.number && second.number == third.number) || (first.number != second.number && second.number != third.number)
    }
    
    static func checkMatch(first: Card, second: Card, third: Card) -> Bool {
        return checkColorMatch(first: first, second: second, third: third) && checkPatternMatch(first: first, second: second, third: third) && checkShadingMatch(first: first, second: second, third: third) && checkNumberMatch(first: first, second: second, third: third)
    }
    
    init(colorProp: CardProperty, patternProp: CardProperty, shadingProp: CardProperty, numberProp: CardProperty) {
        self.color = CardProperty.randomValue(property: colorProp)
        self.pattern = CardProperty.randomValue(property: patternProp)
        self.shading = CardProperty.randomValue(property: shadingProp)
        self.number = CardProperty.randomValue(property: numberProp)
    }
    
    init(colorProp: CardProperty, patternProp: CardProperty, numberProp: CardProperty) {
        self.color = CardProperty.randomValue(property: colorProp)
        self.pattern = CardProperty.randomValue(property: patternProp)
        self.number = CardProperty.randomValue(property: numberProp)
    }
}
