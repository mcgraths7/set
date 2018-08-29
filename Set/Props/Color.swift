//
//  Color.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

enum Color: UInt32 {
    case yellow
    case blue
    case red
    
    private static let _count: Color.RawValue = {
        var maximum: UInt32 = 0
        while let _ = Color(rawValue: maximum) {
            maximum += 1
        }
        return maximum
    }()
    
    static func randomColor() -> Color {
        let random = arc4random_uniform(_count)
        return Color(rawValue: random)!
    }
}


