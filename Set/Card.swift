//
//  Card.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

struct Card: Hashable {
    private var color: String
    private var pattern: String
    private var shading: String
    private var number: String
    
    var isSelected = false
    private var isMatched = false
    
    private static func ==(lhs: Card, rhs: Card) -> Bool {
        return
            (lhs.color == rhs.color && lhs.pattern == rhs.pattern && lhs.shading == rhs.shading && lhs.number == rhs.number) ||
            (lhs.color != rhs.color && lhs.pattern != rhs.pattern && lhs.shading != rhs.shading && lhs.number != rhs.number) ||
        
            (lhs.color != rhs.color && lhs.pattern == rhs.pattern && lhs.shading == rhs.shading && lhs.number == rhs.number) ||
            (lhs.color == rhs.color && lhs.pattern != rhs.pattern && lhs.shading == rhs.shading && lhs.number == rhs.number) ||
            (lhs.color == rhs.color && lhs.pattern == rhs.pattern && lhs.shading != rhs.shading && lhs.number == rhs.number) ||
            (lhs.color == rhs.color && lhs.pattern == rhs.pattern && lhs.shading == rhs.shading && lhs.number != rhs.number) ||
        
            (lhs.color != rhs.color && lhs.pattern != rhs.pattern && lhs.shading == rhs.shading && lhs.number == rhs.number) ||
            (lhs.color != rhs.color && lhs.pattern == rhs.pattern && lhs.shading != rhs.shading && lhs.number == rhs.number) ||
            (lhs.color != rhs.color && lhs.pattern == rhs.pattern && lhs.shading == rhs.shading && lhs.number != rhs.number) ||
            (lhs.color == rhs.color && lhs.pattern != rhs.pattern && lhs.shading != rhs.shading && lhs.number == rhs.number) ||
            (lhs.color == rhs.color && lhs.pattern != rhs.pattern && lhs.shading == rhs.shading && lhs.number != rhs.number) ||
            (lhs.color == rhs.color && lhs.pattern == rhs.pattern && lhs.shading != rhs.shading && lhs.number != rhs.number) ||
        
            (lhs.color != rhs.color && lhs.pattern != rhs.pattern && lhs.shading != rhs.shading && lhs.number == rhs.number) ||
            (lhs.color != rhs.color && lhs.pattern == rhs.pattern && lhs.shading != rhs.shading && lhs.number != rhs.number) ||
            (lhs.color == rhs.color && lhs.pattern != rhs.pattern && lhs.shading != rhs.shading && lhs.number != rhs.number)
    }
    
    var hashValue: Int {
        return color.hashValue ^ pattern.hashValue ^ shading.hashValue ^ number.hashValue
    }
    
    init(colorProp: CardProperty, patternProp: CardProperty, shadingProp: CardProperty, numberProp: CardProperty) {
        self.color = CardProperty.randomValue(property: colorProp)
        self.pattern = CardProperty.randomValue(property: patternProp)
        self.shading = CardProperty.randomValue(property: shadingProp)
        self.number = CardProperty.randomValue(property: numberProp)
    }
    
    mutating func select() {
        self.isSelected = !self.isSelected
    }
    mutating func match() {
        self.isMatched = true
    }
    
    static func checkMatch(firstCard: Card, secondCard: Card, thirdCard: Card) -> Bool {
        return firstCard == secondCard && secondCard == thirdCard
    }
}
