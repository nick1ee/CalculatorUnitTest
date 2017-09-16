//
//  Calculator.swift
//  Calculator
//
//  Created by Nick Lee on 2017/9/16.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import Foundation

struct Calculator {
    
    enum CalculateError: Error {
        
        case invalidOperation
        
    }
    
    func add(_ num1: Int, _ num2: Int) -> Int {
        
        return num1 + num2
        
    }
    
    func minus(_ num1: Int, _ num2: Int) -> Int {
        
        return num1 - num2
        
    }
    
    func multiply(_ num1: Int, _ num2: Int) -> Int {
        
        return num1 * num2
        
    }
    
    func divide(_ num1: Int, _ num2: Int) throws -> Int {
        
        if num2 == 0 {
            
            throw CalculateError.invalidOperation
            
        }
        
        return num1 / num2
        
    }
    
}
