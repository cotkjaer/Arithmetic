//
//  Int.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 20/04/15.
//  Copyright (c) 2015 Christian Otkjær. All rights reserved.
//

import Foundation

public protocol IntegerConvertible
{
    init(_ integer: Int)
}

public extension Int
{
    /**
    Checks if `self` is even.
    
    - returns: **true** if self is even
    */
    var isEven: Bool { return (self % 2) == 0 }
    
    /**
    Checks if `self` is odd.
    
    - returns: true if self is odd
    */
    var isOdd: Bool { return !isEven }
    
    /**
    Returns an array of `Int` containing the digits in self.
    
    - returns: Array of digits
    */
    var digits: [Int] { return String(self).flatMap { Int(String($0)) } }
    
    /**
    Calculates greatest common divisor (GCD) of self and n.
    
    - parameter n:
    - returns: Greatest common divisor
    */
    public func gcd(_ n: Int) -> Int
    {
        return n == 0 ? self : n.gcd(self % n)
    }
    
    /**
    Calculates least common multiple (LCM) of self and n
    
    - parameter n:
    - returns: Least common multiple
    */
    public func lcm(_ n: Int) -> Int
    {
        return abs(self * n) / gcd(n)
    }
    
    /**
    Computes the factorial of self
    
    - returns: Factorial
    */
    var factorial: Int { return self == 0 ? 1 : self * (self - 1).factorial }
}
