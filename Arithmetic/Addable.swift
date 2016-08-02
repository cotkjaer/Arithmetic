//
//  Addable.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public protocol Addable : Zeroable
{
    func + (lhs: Self, rhs: Self) -> Self
    
    func += (inout lhs: Self, rhs: Self)
    
    prefix func + (_: Self) -> Self
}

// MARK: - Optional

public func + <A: Addable>(lhs : A, rhs: A?) -> A
{
    guard let rhs = rhs else { return lhs }
    
    return lhs + rhs
}

public func + <A: Addable>(lhs : A?, rhs: A) -> A
{
    guard let lhs = lhs else { return rhs }
    
    return lhs + rhs
}

func += <A: Addable>(inout lhs : A, rhs: A?)
{
    guard let rhs = rhs else { return }
    
    lhs += rhs
}

// MARK: - Int Interoperability

public func + <F: Addable where F: IntegerConvertible>(lhs: F, rhs: Int) -> F
{
    return lhs + F(rhs)
}

public func + <F: Addable where F: IntegerConvertible>(lhs: Int, rhs: F) -> F
{
    return F(lhs) + rhs
}

public func += <F: Addable where F: IntegerConvertible>(inout lhs: F, rhs: Int)
{
    return lhs += F(rhs)
}

