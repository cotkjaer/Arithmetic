//
//  EpsilonTests.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Arithmetic

class EpsilonTests: XCTestCase
{
    func test_Double_epsilon()
    {
        XCTAssertGreaterThan(Double.ulpOfOne, 0)
        
        let one = Double(1)
        
        XCTAssertGreaterThan(one + Double.ulpOfOne, one)
        XCTAssert(one + Double.ulpOfOne * 0.5 == one)
    }
    
    func test_Float_epsilon()
    {
        XCTAssertGreaterThan(Float.ulpOfOne, 0)
        
        let one = Float(1)
        
        XCTAssertGreaterThan(one + Float.ulpOfOne, one)
        XCTAssert(one + Float.ulpOfOne * 0.5 == one)
    }    
}
