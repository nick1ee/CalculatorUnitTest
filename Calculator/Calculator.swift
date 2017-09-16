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
    
    func add(_ number1: Int, _ number2: Int) -> Int {
        
        return number1 + number2
        
    }
    
    func minus(_ number1: Int, _ number2: Int) -> Int {
        
        return number1 - number2
        
    }
    
    func multiply(_ number1: Int, _ number2: Int) -> Int {
        
        return number1 * number2
        
    }
    
    func divide(_ number1: Int, _ number2: Int) throws -> Int {
        
        if number2 == 0 {
            
            throw CalculateError.invalidOperation
            
        }
        
        return number1 / number2
        
    }
    
}
