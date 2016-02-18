//
//  Power.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

// MARK: - Powerable

public protocol Powerable //: FloatingPointArithmeticType
{
    static func ** (left: Self, right: Self) -> Self

    func pow(rhs: Self) -> Self
}

infix operator ** { associativity left precedence 160 }

public func ** <F: Powerable>(left: F, right: F) -> F { return left.pow(right) }

infix operator **= { associativity right precedence 90 }

public func **= <F: Powerable>(inout left: F, right: F) { left = left ** right }


@warn_unused_result
public func pow<F: Powerable>(lhs: F, _ rhs: F) -> F
{
    return lhs.pow(rhs)
}

public func ** (left: Int, right: Int) -> Double { return pow(Double(left), Double(right)) }
public func ** (left: Double, right: Double) -> Double { return pow(left, right) }
public func ** (left: Float, right: Float) -> Float { return powf(left, right) }

// MARK: - Double

extension Double : Powerable
{
    @warn_unused_result
    public func pow(rhs: Double) -> Double
    {
        return Foundation.pow(self, rhs)
    }
}

// MARK: - Float

extension Float : Powerable
{
    @warn_unused_result
    public func pow(rhs: Float) -> Float
    {
        return Foundation.powf(self, rhs)
    }
}