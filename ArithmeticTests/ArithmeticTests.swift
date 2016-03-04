//
//  ArithmeticTests.swift
//  ArithmeticTests
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Arithmetic

class ArithmeticTests: XCTestCase
{
    func test_angle_normalize()
    {
        let d = 1293.12
        
        XCTAssertGreaterThan(0, d.normalized())
        XCTAssertLessThan(Double.π2, d.normalized())
    }
}
