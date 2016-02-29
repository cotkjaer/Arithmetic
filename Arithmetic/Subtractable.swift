//
//  Subtractable.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public protocol Subtractable
{
    func - (lhs: Self, rhs: Self) -> Self
    
    func -= (inout lhs: Self, rhs: Self)
    
    prefix func - (_: Self) -> Self
}

// MARK: - Int Interoperability

public func - <F:Subtractable where F:IntegerConvertible>(lhs: F, rhs: Int) -> F
{
    return lhs - F(rhs)
}

public func - <F:Subtractable where F:IntegerConvertible>(lhs: Int, rhs: F) -> F
{
    return F(lhs) - rhs
}

public func -= <F:Subtractable where F:IntegerConvertible>(inout lhs: F, rhs: Int)
{
    return lhs -= F(rhs)
}
