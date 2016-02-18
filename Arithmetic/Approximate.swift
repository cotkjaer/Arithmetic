//
//  Approximate.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import Foundation

public protocol ApproximatelyEquatable
{
    func equalTo(other: Self, within precision: Self) -> Bool
}

// MARK: - Default

public extension ApproximatelyEquatable where Self:Comparable, Self:Subtractable, Self:AbsoluteValuable
{
    func equalTo(other: Self, within precision: Self) -> Bool
    {
        return abs(self - other) <= abs(precision)
    }
}

//MARK: - Approximate equals

public func approximatelyEqual<C:Comparable where C:Subtractable, C:AbsoluteValuable>(lhs: C, _ rhs: C, accuracy: C) -> Bool
{
    return abs(rhs - lhs) <= abs(accuracy)
}


