//
//  Lerp.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 14/12/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

/// Precise generic linear interpolation function which guarantees 
///```swift
///lerp(a,b,0) == a && lerp(a,b,1) == b
public func lerp <F: FloatingPointArithmeticType> (lower: F, _ upper: F, _ factor: F) -> F
{
    return lower * (F(1) - factor) + upper * factor
}

///Linear interpolation for array of Lerpables
public func lerp <F: FloatingPointArithmeticType>(lerpables: [F], _ factor: F) -> [F]
{
    let count = lerpables.count
    
    guard count > 1 else { return lerpables }
    
    return 1.stride(to: count, by: 1).map { i in lerp(lerpables[i - 1], lerpables[i], factor) }
}

