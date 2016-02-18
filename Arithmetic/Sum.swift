//
//  Sum.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

@warn_unused_result
public func sum<T: IntegerArithmeticType where T:IntegerLiteralConvertible>(vs: T...) -> T
{
    return vs.reduce(0) { return $0 + $1 }
}

//MARK: - Sum

public extension SequenceType where Generator.Element : Addable//, Generator.Element : IntegerLiteralConvertible
{
    func sum() -> Generator.Element
    {
        return reduce(Generator.Element.zero) { return $0 + $1 }
    }
}