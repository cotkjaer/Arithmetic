//
//  MathTests.swift
//  MathTests
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Arithmetic

class MathTests: XCTestCase
{
    func test_Int_Double_add() {
        
        let d = Double(1)
        
        let i = 1
        
        let d2 = d + i
        
        XCTAssertEqual(d2, Double(2))
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
