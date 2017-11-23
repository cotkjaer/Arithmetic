//
//  OddEvenTests.swift
//  Arithmetic
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Arithmetic

class IntTests: XCTestCase
{
    func test_even()
    {
        let negative10 = -10
        
        XCTAssert(negative10.isEven)
        XCTAssert(2.isEven)
        XCTAssert(0.isEven)
        XCTAssertFalse(129398121.isEven)
    }
    
    func test_odd()
    {
        let negativeFive = -5
        
        XCTAssert(negativeFive.isOdd)
        XCTAssert((-71).isOdd)
        XCTAssertFalse(80.isOdd)
        XCTAssertFalse(0.isOdd)
        XCTAssertFalse((-2).isOdd)
    }
}
