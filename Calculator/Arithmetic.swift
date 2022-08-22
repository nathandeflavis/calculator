//
//  Arithmetic.swift
//  Calculator
//
//  Created by Nathan De Flavis on 26/07/2022.
//

import Foundation

/*
 Utility class to perform arithmetic operations
 */
class Arithmetic {
    /*!
     Subtract b from a
     */
    static func getDifference(a : Double, b : Double) -> Double {
        return a - b
    }
        
    /*!
     Negate sign of non-zero a
     */
    static func getNegation(a : Double) -> Double {
        return -a
    }
    
    /*!
     Multiply a by b
     */
    static func getProduct(a : Double, b : Double) -> Double {
        return a * b
    }
    
    /*!
     Divide a by non-zero b
     */
    static func getQuotient(a : Double, b : Double) throws -> Double {
        if b == 0 {
            throw ArithmeticError.divisionByZero
        }
        
        return a / b
    }
    
    /*!
     Add b to a
     */
    static func getSum(a : Double, b : Double) -> Double {
        return a + b
    }

    /*!
     Compute non-percentage value equivalent to a treating a as percentage
     */
    static func getValueOfPercentage(a : Double) -> Double {
        return a / 100
    }
}
