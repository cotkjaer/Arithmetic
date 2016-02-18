//
//  Sign.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 10/12/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

import CoreGraphics

// MARK: - Sign

public extension Comparable where Self : IntegerLiteralConvertible
{
    public var sign : Self { return self < 0 ? -1 : 1 }
}

public func sign<N:IntegerLiteralConvertible where N:Comparable>(n: N) -> N
{
    return n < 0 ? -1 : 1
}

public func sameSign<N:IntegerLiteralConvertible where N:Comparable>(lhs: N, _ rhs: N) -> Bool
{
    return sign(lhs) == sign(rhs)
}


