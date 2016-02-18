//
//  ArithmeticType.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 14/12/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

public protocol ArithmeticType: Subtractable, Addable, Multipliable, Dividable, Remainderable, Comparable, SignedNumberType, AbsoluteValuable {}

extension Int: ArithmeticType {}
extension UInt: ArithmeticType {}


