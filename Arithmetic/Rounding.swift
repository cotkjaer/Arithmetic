//
//  Rounding.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import Foundation

// MARK: - Rounding

public protocol Roundable
{
    /// `self` rounded to an arbitrary number
    func rounded(toNearest number: Self) -> Self
    
    mutating func round(toNearest number: Self)
    
    /// Largest integral value not greater than `self`
    var floor : Self { get }
    
    /// Smallest integral value not less than `self`
    var ceil : Self { get }
    
    /// Nearest integral value, eaqual to, less than, or greater than `self`
    var round : Self { get }
}


// MARK: - Default

public extension Roundable
{
    /**
     Round `self` to arbitrary number
     
     - parameter number: the number to use in rounding, if `nil` self is rounded to nearest integral value
     */
    mutating func round(toNearest number: Self)
    {
        self = rounded(toNearest: number)
    }
}

public extension Roundable where Self : ArithmeticType
{
    /**
     Round `self` to arbitrary `number`
     
     - parameter number: the number to use in rounding
     */
    func rounded(toNearest number: Self) -> Self
    {
        let remainder = self % number
        return remainder < number / 2 ? self - remainder : self - remainder + number
    }
}

extension Double : Roundable
{
    /// Largest integral value not greater than `self`
    public var floor : Double { return Foundation.floor(self) }
    
    /// Smallest integral value not less than `self`
    public var ceil : Double { return Foundation.ceil(self) }
    
    /// Nearest integral value, eaqual to, less than, or greater than `self`
    public var round : Double { return Foundation.round(self) }
}

extension Float : Roundable
{
    /// Largest integral value not greater than `self`
    public var floor : Float { return Foundation.floorf(self) }
    
    /// Smallest integral value not less than `self`
    public var ceil : Float { return Foundation.ceilf(self) }

    /// Nearest integral value, eaqual to, less than, or greater than `self`
    public var round : Float { return Foundation.roundf(self) }
}




