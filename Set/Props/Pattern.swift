//
//  Pattern.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

enum Pattern: UInt32 {
    case triangle
    case square
    case circle
    
    private static let _count: Pattern.RawValue = {
        var maximum: UInt32 = 0
        while let _ = Pattern(rawValue: maximum) {
            maximum += 1
        }
        return maximum
    }()
    
    static func randomColor() -> Pattern {
        let random = arc4random_uniform(_count)
        return Pattern(rawValue: random)!
    }
}
