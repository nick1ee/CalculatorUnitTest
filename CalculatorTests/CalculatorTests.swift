//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Nick Lee on 2017/9/16.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    var calculator: Calculator?

    // MARK: Preparre instance for test
    override func setUp() {
        super.setUp()
        
        calculator = Calculator()
        
    }
    
    
    // MARK: After test, relaset the instance.
    override func tearDown() {
        
        calculator = nil
        
        super.tearDown()
        
    }
    
    // MARK: Test Case
    
    func testAdd() {
        
        let result = calculator!.add(5, 0)
        
        XCTAssertEqual(
            result,
            5
        )
        
        let result2 = calculator!.add(10, -10)
        
        XCTAssertEqual(
            result2,
            0
        )
        
    }
    
    func testMinus() {
        
        let result = calculator!.minus(10, 0)
        
        XCTAssertEqual(
            result,
            10
        )
        
        let result2 = calculator!.minus(20, -10)
        
        XCTAssertEqual(
            result2,
            30
        )

    }
    
    func testMultiply() {
        
        let result = calculator!.multiply(5, 0)
        
        XCTAssertEqual(
            result,
            0
        )
        
        let result2 = calculator!.multiply(10, -10)
        
        XCTAssertEqual(
            result2,
            -100
        )
        
    }
    
    func testDivide() {
        
        do {
            
            let result = try calculator?.divide(5, 0)
            
            XCTAssertEqual(
                result,
                5
            )
            
        } catch Calculator.CalculateError.invalidOperation {
            
            print("Invalid Operation")
            
        } catch let error {
            
            print("Unexpected Error", error.localizedDescription)
            
        }
        
        do {
            
            let result2 = try calculator?.divide(5, 5)
            
            XCTAssertEqual(
                result2,
                1
            )
            
        } catch Calculator.CalculateError.invalidOperation {
            
            print("Invalid Operation")
            
        } catch let error {
            
            print("Unexpected Error", error.localizedDescription)
            
        }

    }
    
}
