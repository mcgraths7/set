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
    
    static func randomValue(property: CardProperty) -> String {
        let random = arc4random_uniform(3)
        switch property {
        case .Color:
            switch random {
            case 0:
                return "yellow"
            case 1:
                return "blue"
            case 2:
                return "red"
            default:
                return "white"
            }
        case .Pattern:
            switch random {
            case 0:
                return "triangle"
            case 1:
                return "square"
            case 2:
                return "circle"
            default:
                return "none"
            }
        case .Shading:
            switch random {
            case 0:
                return "solid"
            case 1:
                return "striped"
            case 2:
                return "empty"
            default:
                return "none"
            }
        case .Number:
            switch random {
            case 0:
                return "1"
            case 1:
                return "2"
            case 2:
                return "3"
            default:
                return "0"
            }
        }
    }
}
