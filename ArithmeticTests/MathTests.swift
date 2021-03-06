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
    }
    
    func test_Double_add_Optional_Double()
    {
        let d1 = 1.2
        let d2 = -0.8
        
        var od : Double? = 1.1
        
        let accuracy = 0.000001
        
        XCTAssertEqual(d1 + od, 2.3, accuracy: accuracy)
        XCTAssertEqual(od + d1, 2.3, accuracy: accuracy)
        XCTAssertEqual(d2 + od, 0.3, accuracy: accuracy)
        XCTAssertEqual(od + d2, 0.3, accuracy: accuracy)
        
        XCTAssertEqual(d1 - od, 0.1, accuracy: accuracy)
        XCTAssertEqual(od - d1, -0.1, accuracy: accuracy)
        XCTAssertEqual(d2 - od, -1.9, accuracy: accuracy)
        XCTAssertEqual(od - d2, 1.9, accuracy: accuracy)
        
        var d3 = 0.0
        
        d3 += od
        
        XCTAssertEqual(d3, 1.1, accuracy: accuracy)
        
        d3 -= od

        XCTAssertEqual(d3, 0.0, accuracy: accuracy)

        od = nil
        
        XCTAssertEqual(d1 + od, d1, accuracy: accuracy)
        XCTAssertEqual(od + d1, d1, accuracy: accuracy)
        XCTAssertEqual(d2 + od, d2, accuracy: accuracy)
        XCTAssertEqual(od + d2, d2, accuracy: accuracy)
        
        XCTAssertEqual(d1 - od, d1, accuracy: accuracy)
        XCTAssertEqual(od - d1, -d1, accuracy: accuracy)
        XCTAssertEqual(d2 - od, d2, accuracy: accuracy)
        XCTAssertEqual(od - d2, -d2, accuracy: accuracy)
        
        
        d3 = 1.0
        
        d3 += od
        
        XCTAssertEqual(d3, 1.0, accuracy: accuracy)
        
        d3 -= od
        
        XCTAssertEqual(d3, 1.0, accuracy: accuracy)
    }
}
