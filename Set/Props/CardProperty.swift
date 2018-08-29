//
//  CardProperty.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

enum CardProperty: UInt32 {
    case Color
    case Pattern
    case Shading
    case Number
    
    private static let _count: CardProperty.RawValue = {
        var maximum: UInt32 = 0
        while let _ = CardProperty(rawValue: maximum) {
            maximum += 1
        }
        return maximum
    }()
    
    private static func randomProperty() -> CardProperty {
        let random = arc4random_uniform(_count)
        return CardProperty(rawValue: random)!
    }
    
    static func randomValue(property: CardProperty) -> String {
        let random = arc4random_uniform(3)
        switch property {
        case .Color:
            switch random {
            case 1:
                return "yellow"
            case 2:
                return "blue"
            case 3:
                return "red"
            default:
                return "white"
            }
        case .Pattern:
            switch random {
            case 1:
                return "triangle"
            case 2:
                return "square"
            case 3:
                return "circle"
            default:
                return "none"
            }
        case .Shading:
            switch random {
            case 1:
                return "solid"
            case 2:
                return "striped"
            case 3:
                return "empty"
            default:
                return "none"
            }
        case .Number:
            switch random {
            case 1:
                return "1"
            case 2:
                return "2"
            case 3:
                return "3"
            default:
                return "0"
            }
        }
    }
}
