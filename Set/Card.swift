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
    
    init(colorProp: CardProperty, patternProp: CardProperty, numberProp: CardProperty) {
        self.color = CardProperty.randomValue(property: colorProp)
        self.pattern = CardProperty.randomValue(property: patternProp)
        self.number = CardProperty.randomValue(property: numberProp)
    }
        
    static func checkMatch(firstCard: Card, secondCard: Card, thirdCard: Card) -> Bool {
        return firstCard == secondCard && secondCard == thirdCard
    }
}
