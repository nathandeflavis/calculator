//
//  InputValidator.swift
//  Calculator
//
//  Created by Nathan De Flavis on 26/07/2022.
//

import Foundation
import UIKit

/*!
 Validator that inputs are purely numeric
 */
class InputValidator {
    /*!
     Determine whether all inputs are valid
     */
    static func areValid(inputs : [String?]) -> Bool {
        for input in inputs {
            if(!isValid(input: input)) {
                return false
            }
        }
        
        return true
    }
    
    /*!
     Determine whether input is valid
     */
    static func isValid(input : String?) -> Bool {
        if input == nil {
            return false
        }
        
        return !(input!.isEmpty || Double(input!) == nil)
    }
}
