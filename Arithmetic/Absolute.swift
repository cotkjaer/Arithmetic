//
//  Absolute.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

// MARK: - Absolute

public extension AbsoluteValuable
{
    var absolute: Self { return abs(self) }
}

// MARK: - Int

extension Int : AbsoluteValuable
{
    @warn_unused_result
    public static func abs(x: Int) -> Int
    {
        return Swift.abs(x)
    }
}

// MARK: - Int

extension UInt : AbsoluteValuable
{
    @warn_unused_result
    public static func abs(x: UInt) -> UInt
    {
        return x
    }
}

