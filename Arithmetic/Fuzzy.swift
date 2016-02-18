//
//  Fuzzy.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

// MARK: Fuzzy equality

public protocol FuzzyEquatable : ApproximatelyEquatable
{
    func ==% (lhs: Self, rhs: Self) -> Bool
}

infix operator ==% { associativity none precedence 130 }

// MARK: Fuzzy inequality

infix operator !=% { associativity none precedence 130 }

public func !=% <T: FuzzyEquatable> (lhs: T, rhs: T) -> Bool
{
    return !(lhs ==% rhs)
}

// MARK: Default

public func ==% <F:FloatingPointArithmeticType> (lhs: F, rhs: F) -> Bool
{
    return lhs.equalTo(rhs, within: F.epsilon)
}

