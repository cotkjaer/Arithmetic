//
//  Overflow.swift
//  Overflow
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//


/// add lhs and rhs and assign to lhs, silently discarding any overflow.
infix operator &+= { associativity right precedence 90 }

/// add lhs and rhs and assign to lhs, silently discarding any overflow.
func &+= <T : IntegerArithmeticType> (inout lhs: T, rhs: T)
{
    lhs = lhs &+ rhs
}

/// subtract rhs from lhs and assign to lhs, silently discarding any overflow.
infix operator &-= { associativity right precedence 90 }

/// subtract rhs from lhs and assign to lhs, silently discarding any overflow.
func &-= <T : IntegerArithmeticType> (inout lhs: T, rhs: T)
{
    lhs = lhs &- rhs
}