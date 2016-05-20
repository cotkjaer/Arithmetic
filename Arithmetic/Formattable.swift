//
//  Formattable.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 20/05/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import Foundation

public protocol FormattableFloatingPointType : FloatingPointType
{
    func formatted(fractionDigits: Int) -> String
}

// MARK: - Format

extension NSNumberFormatter
{
    convenience init(decimalNumberWithFractionDigits fractionDigits: Int)
    {
        self.init()
        numberStyle = .DecimalStyle
        minimumFractionDigits = fractionDigits
        maximumFractionDigits = fractionDigits
    }
}

extension CGFloat : FormattableFloatingPointType
{
    public func formatted(fractionDigits: Int = 2) -> String
    {
        return NSNumberFormatter(decimalNumberWithFractionDigits: fractionDigits).stringFromNumber(self) ?? String(self)
    }
}

extension Float : FormattableFloatingPointType
{
    public func formatted(fractionDigits: Int = 3) -> String
    {
        return NSNumberFormatter(decimalNumberWithFractionDigits: fractionDigits).stringFromNumber(self) ?? String(self)
    }
}
extension Double : FormattableFloatingPointType
{
    public func formatted(fractionDigits: Int = 4) -> String
    {
        return NSNumberFormatter(decimalNumberWithFractionDigits: fractionDigits).stringFromNumber(self) ?? String(self)
    }
}
